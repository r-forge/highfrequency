 # This file contains all realized measures previously implemented in RTAQ and realized

 ########################################################
 ## Help functions: (not exported)
 ########################################################
.multixts <- function( x, y=NULL)
{ 
  if(is.null(y)){
    test = is.xts(x) && (ndays(x)!=1);
    return(test);}
  if(!is.null(y)){
    test = (is.xts(x) && (ndays(x)!=1)) || ( ndays(y)!=1 && is.xts(y) );
    if( test ){
      test1 = dim(y) == dim(x);
      if(!test1){ warning("Please make sure x and y have the same dimensions") }
      if(test1){  test = list( TRUE, cbind(x,y) ); return(test) }
    } 
  } 
} 

RV = function(rdata,...){
  if(hasArg(data)){ rdata = data }
  returns=as.numeric(rdata);
  RV = sum(returns*returns);
  return(RV);
}

RBPCov_bi = function(ts1,ts2){
  n = length(ts1);
  a = abs(ts1+ts2);
  b = abs(ts1-ts2);  
  first = as.numeric(a[1:(n-1)])*as.numeric(a[2:n]);
  last = as.numeric(b[1:(n-1)])*as.numeric(b[2:n]);
  result =  (pi/8)*sum(first-last);
  return(result);
}

#Realized BiPower Variation (RBPVar) (RBPVar)
RBPVar = function(rdata,...){
  if(hasArg(data)){ rdata = data }
  
  returns = as.vector(as.numeric(rdata));
  n = length(returns);
  rbpvar = (pi/2)*sum(abs(returns[1:(n-1)])*abs(returns[2:n]));
  return(rbpvar);
}

# Check data:
rdatacheck = function (rdata, multi = FALSE) 
{
  if ((dim(rdata)[2] < 2) & (multi)) {
    stop("Your rdata object should have at least 2 columns")
  }
}

######## rowcov helper functions:
#Realized Outlyingness Weighted Quadratic Covariation (ROWQCov)
conhuber = function(di,alpha=0.05)
{# consistency factor ROWQCov based on Huber weight function
  c = qchisq(p=1-alpha,df=di)
  fw2 = function(t){
    z=t^2; return(  huberweight(z,c)*( t^(di-1) )*exp(-z/2)    ) }
  fw1 = function(t){
    z=t^2; return(  huberweight(z,c)*( t^(di+1) )*exp(-z/2)   )}
  c2 = integrate(fw2,0,Inf)$value;  c1 = integrate(fw1,0,Inf)$value;
  return( di*c2/c1 )
}

conHR = function(di,alpha=0.05)
{
  # consistency factor ROWQCov based on hard rejection weight function
  return( (1-alpha)/pchisq(qchisq(1-alpha,df=di),df=di+2)  )
}

huberweight = function(d,k){
  # Huber or soft rejection weight function
  w = apply( cbind( rep(1,length(d) ) , (k/d) ),1,'min'); return(w);
}

countzeroes = function( series )
{
  return( sum( 1*(series==0) ) )
}

#Realized Outlyingness Weighted Variance (ROWVar):
univariateoutlyingness = function(rdata,...){
  require('robustbase');
  if(hasArg(data)){ rdata = data }
  #computes outlyingness of each obs compared to row location and scale
  location = 0;
  scale = mad(rdata);
  if(scale==0){
    scale = mean(rdata);
  }
  d = ((rdata - location)/scale)^2;
}


ROWVar = function(rdata, seasadjR = NULL, wfunction = "HR" , alphaMCD = 0.75, alpha = 0.001,...) 
  {
    require('robustbase');
    if(hasArg(data)){ rdata = data }
    require(robustbase)
    if (is.null(seasadjR)) {
      seasadjR = rdata;
    }
    
    rdata = as.vector(rdata); seasadjR = as.vector(seasadjR);
    intraT = length(rdata); N=1;
    MCDcov = as.vector(covMcd( rdata , use.correction = FALSE )$raw.cov)
    outlyingness = seasadjR^2/MCDcov    
    k = qchisq(p = 1 - alpha, df = N)
    outlierindic = outlyingness > k
    weights = rep(1, intraT)
    if( wfunction == "HR" ){
      weights[outlierindic] = 0
      wR = sqrt(weights) * rdata
      return((conHR(di = N, alpha = alpha) * sum(wR^2))/mean(weights))
    }
    if( wfunction == "SR" ){
      weights[outlierindic] = k/outlyingness[outlierindic]
      wR = sqrt(weights) * rdata
      return((conhuber(di = N, alpha = alpha) * sum(wR^2))/mean(weights))
    }
    
  }

#### Two time scale helper functions:
TSRV = function ( pdata , K=300 , J=1 ) 
{
  # based on rv.timescale
  logprices = log(as.numeric(pdata))
  n = length(logprices) ;
  nbarK = (n - K + 1)/(K) # average number of obs in 1 K-grid
  nbarJ = (n - J + 1)/(J)
  adj = (1 - (nbarK/nbarJ))^-1 
  logreturns_K = logreturns_J = c();
  for( k in 1:K){
    sel =  seq(k,n,K)  
    logreturns_K = c( logreturns_K , diff( logprices[sel] ) )
  }
  for( j in 1:J){
    sel =  seq(j,n,J)  
    logreturns_J = c( logreturns_J , diff( logprices[sel] ) )
  }
  TSRV = adj * ( (1/K)*sum(logreturns_K^2) - ((nbarK/nbarJ) *(1/J)*sum(logreturns_J^2)))
  return(TSRV)
}

RTSRV = function (pdata, startIV = NULL, noisevar = NULL, K = 300, J = 1, 
                  eta = 9){
  logprices = log(as.numeric(pdata))
  n = length(logprices)
  nbarK = (n - K + 1)/(K)
  nbarJ = (n - J + 1)/(J)
  adj = (1 - (nbarK/nbarJ))^-1
  zeta = 1/pchisq(eta, 3)
  seconds = as.numeric(as.POSIXct(index(pdata)))
  secday = last(seconds) - first(seconds)
  logreturns_K = vdelta_K = logreturns_J = vdelta_J = c()
  for (k in 1:K) {
    sel = seq(k, n, K)
    logreturns_K = c(logreturns_K, diff(logprices[sel]))
    vdelta_K = c(vdelta_K, diff(seconds[sel])/secday)
  }
  for (j in 1:J) {
    sel = seq(j, n, J)
    logreturns_J = c(logreturns_J, diff(logprices[sel]))
    vdelta_J = c(vdelta_J, diff(seconds[sel])/secday)
  }
  if (is.null(noisevar)) {
    noisevar = max(0,1/(2 * nbarJ) * (sum(logreturns_J^2)/J - TSRV(pdata=pdata,K=K,J=J)))        
  }
  if (!is.null(startIV)) {
    RTSRV = startIV
  }
  if (is.null(startIV)) {
    sel = seq(1, n, K)
    RTSRV = medRV(diff(logprices[sel]))
  }
  iter = 1
  while (iter <= 20) {
    I_K = 1 * (logreturns_K^2 <= eta * (RTSRV * vdelta_K + 
      2 * noisevar))
    I_J = 1 * (logreturns_J^2 <= eta * (RTSRV * vdelta_J + 
      2 * noisevar))
    if (sum(I_J) == 0) {
      I_J = rep(1, length(logreturns_J))
    }
    if (sum(I_K) == 0) {
      I_K = rep(1, length(logreturns_K))
    }
    RTSRV = adj * (zeta * (1/K) * sum(logreturns_K^2 * I_K)/mean(I_K) - 
      ((nbarK/nbarJ) * zeta * (1/J) * sum(logreturns_J^2 * 
      I_J)/mean(I_J)))
    iter = iter + 1
  }
  return(RTSRV)
}


RTSCov_bi = 
  function (pdata1, pdata2, startIV1 = NULL, startIV2 = NULL, noisevar1 = NULL, 
            noisevar2 = NULL, K = 300, J = 1, 
            K_cov = NULL , J_cov = NULL , 
            K_var1 = NULL , K_var2 = NULL , 
            J_var1 = NULL , J_var2 = NULL ,       
            eta = 9) 
  {
    if( is.null(K_cov)){ K_cov = K }   ;   if( is.null(J_cov)){ J_cov = J } 
    if( is.null(K_var1)){ K_var1 = K } ;   if( is.null(K_var2)){ K_var2 = K }   
    if( is.null(J_var1)){ J_var1 = J } ;   if( is.null(J_var2)){ J_var2 = J }
    
    # Calculation of the noise variance and TSRV for the truncation
    
    
    
    if (   is.null(noisevar1)   ) {
      logprices1 = log(as.numeric(pdata1))     
      n_var1 = length(logprices1)
      nbarK_var1 = (n_var1 - K_var1 + 1)/(K_var1) ;
      nbarJ_var1 = (n_var1 - J_var1 + 1)/(J_var1)
      adj_var1 = n_var1/((K_var1 - J_var1) * nbarK_var1) 
      
      logreturns_K1 = logreturns_J1 = c()
      for (k in 1:K_var1) {
        sel.avg = seq(k, n_var1, K_var1)
        logreturns_K1 = c(logreturns_K1, diff(logprices1[sel.avg]))
      }
      for (j in 1:J_var1) {
        sel.avg = seq(j, n_var1, J_var1)
        logreturns_J1 = c(logreturns_J1, diff(logprices1[sel.avg]))
      }   
      if(  is.null(noisevar1)  ){
        noisevar1 = max(0,1/(2 * nbarJ_var1) * (sum(logreturns_J1^2)/J_var1 - TSRV(pdata1,K=K_var1,J=J_var1)))
      }
    }
    if (is.null(noisevar2)) {
      logprices2 = log(as.numeric(pdata2))
      n_var2 = length(logprices2)
      nbarK_var2 = (n_var2 - K_var2 + 1)/(K_var2) ;
      nbarJ_var2 = (n_var2 - J_var2 + 1)/(J_var2)
      adj_var2 = n_var2/((K_var2 - J_var2) * nbarK_var2)    
      
      logreturns_K2 = logreturns_J2 = c()
      for (k in 1:K_var2) {
        sel.avg = seq(k, n_var2, K_var2)
        logreturns_K2 = c(logreturns_K2, diff(logprices2[sel.avg]))
      }
      for (j in 1:J_var2) {
        sel.avg = seq(j, n_var2, J_var2)
        logreturns_J2 = c(logreturns_J2, diff(logprices2[sel.avg]))
      }        
      noisevar2 = max(0,1/(2 * nbarJ_var2) * (sum(logreturns_J2^2)/J_var2 - TSRV(pdata2,K=K_var2,J=J_var2)))
    }    
    
    if (!is.null(startIV1)) {
      RTSRV1 = startIV1
    }else{
      RTSRV1 = RTSRV(pdata=pdata1, noisevar = noisevar1, K = K_var1, J = J_var1, eta = eta)      
    }
    if (!is.null(startIV2)) {
      RTSRV2 = startIV2
    }else{
      RTSRV2 = RTSRV(pdata=pdata2, noisevar = noisevar2, K = K_var2, J = J_var2, eta = eta)      
    }
    
    # Refresh time is for the covariance calculation
    
    x = refreshTime(list(pdata1, pdata2))
    newprice1 = x[, 1]
    newprice2 = x[, 2]
    logprices1 = log(as.numeric(newprice1))
    logprices2 = log(as.numeric(newprice2))
    seconds = as.numeric(as.POSIXct(index(newprice1)))
    secday = last(seconds) - first(seconds)        
    K = K_cov ; J = J_cov ;    
    
    n = length(logprices1)
    nbarK_cov = (n - K_cov + 1)/(K_cov)
    nbarJ_cov = (n - J_cov + 1)/(J_cov)
    adj_cov = n/((K_cov - J_cov) * nbarK_cov)    
    
    logreturns_K1 = logreturns_K2 = vdelta_K = c()
    for (k in 1:K_cov) {
      sel.avg = seq(k, n, K_cov)
      logreturns_K1 = c(logreturns_K1, diff(logprices1[sel.avg]))
      logreturns_K2 = c(logreturns_K2, diff(logprices2[sel.avg]))
      vdelta_K = c(vdelta_K, diff(seconds[sel.avg])/secday)
    }
    
    logreturns_J1 = logreturns_J2 = vdelta_J = c()      
    for (j in 1:J_cov) {
      sel.avg = seq(j, n, J_cov)
      logreturns_J1 = c(logreturns_J1, diff(logprices1[sel.avg]))
      logreturns_J2 = c(logreturns_J2, diff(logprices2[sel.avg]))
      vdelta_J = c(vdelta_J, diff(seconds[sel.avg])/secday)
    }
    
    
    I_K1 = 1 * (logreturns_K1^2 <= eta * (RTSRV1 * vdelta_K + 2 * noisevar1))
    I_K2 = 1 * (logreturns_K2^2 <= eta * (RTSRV2 * vdelta_K + 2 * noisevar2))
    I_J1 = 1 * (logreturns_J1^2 <= eta * (RTSRV1 * vdelta_J + 2 * noisevar1))
    I_J2 = 1 * (logreturns_J2^2 <= eta * (RTSRV2 * vdelta_J + 2 * noisevar2))
    if (eta == 9) {
      ccc = 1.0415
    } else {
      ccc = cfactor_RTSCV(eta = eta)
    }
    RTSCV = adj_cov * (ccc * (1/K_cov) * sum(logreturns_K1 * I_K1 * 
      logreturns_K2 * I_K2)/mean(I_K1 * I_K2) - ((nbarK_cov/nbarJ_cov) * 
      ccc * (1/J_cov) * sum(logreturns_J1 * logreturns_J2 * I_J1 * 
      I_J2)/mean(I_J1 * I_J2)))
    return(RTSCV)
  }

TSCov_bi = function (pdata1, pdata2, K = 300, J = 1) 
{
  x = refreshTime(list(pdata1, pdata2))
  newprice1 = x[, 1]
  newprice2 = x[, 2]
  logprices1 = log(as.numeric(newprice1))
  logprices2 = log(as.numeric(newprice2))
  seconds = as.numeric(as.POSIXct(index(newprice1)))
  secday = last(seconds) - first(seconds)
  n = length(logprices1)
  nbarK = (n - K + 1)/(K)
  nbarJ = (n - J + 1)/(J)
  adj = n/((K - J) * nbarK)
  
  logreturns_K1 = logreturns_K2 = logreturns_J1 = logreturns_J2 = c()
  vdelta_K =  vdelta_J = c();
  
  for (k in 1:K) {
    sel.avg = seq(k, n, K)
    logreturns_K1 = c(logreturns_K1, diff(logprices1[sel.avg]))
    logreturns_K2 = c(logreturns_K2, diff(logprices2[sel.avg]))
    vdelta_K = c(vdelta_K, diff(seconds[sel.avg]) / secday)
  }
  
  for (j in 1:J) {
    sel.avg = seq(j, n, J)
    logreturns_J1 = c(logreturns_J1, diff(logprices1[sel.avg]))
    logreturns_J2 = c(logreturns_J2, diff(logprices2[sel.avg]))
    vdelta_J = c(vdelta_J, diff(seconds[sel.avg])/secday)
  }
  
  TSCOV = adj * ((1/K) * sum(logreturns_K1 * logreturns_K2) - 
    ((nbarK/nbarJ) * (1/J) * sum(logreturns_J1 * logreturns_J2)))
  return(TSCOV)
}

cfactor_RTSCV = function(eta=9){
  require('cubature'); require('mvtnorm')
  # rho = 1
  c1 = pchisq(eta,df=1)/pchisq(eta,df=3) 
  # 
  rho = 0.001
  R = matrix( c(1,rho,rho,1) , ncol = 2 ) 
  int1 <- function(x) {    dmvnorm(x,sigma=R) }
  num = adaptIntegrate(int1, c(-3,-3), c(3,3), tol=1e-4)$integral
  int2 <- function(x) {  x[1]*x[2]*dmvnorm(x,sigma=R) }
  denom = adaptIntegrate(int2, c(-3,-3), c(3,3), tol=1e-4)$integral
  c2 = rho*num/denom   
  return( (c1+c2)/2 )
}

# Hayashi-Yoshida helper function:
rc.hy <- function(x,y, period=1,align.by="seconds", align.period =1, cts = TRUE, makeReturns=FALSE, ...)
{
  align.period = .getAlignPeriod(align.period, align.by)
  cdata <- .convertData(x, cts=cts, makeReturns=makeReturns)
  x <- cdata$data
  x.t <- cdata$milliseconds
  
  cdatay <- .convertData(y, cts=cts, makeReturns=makeReturns)
  y <- cdatay$data
  y.t <- cdatay$milliseconds
  
  
  errorCheck <- c(is.null(x.t),is.na(x.t), is.null(y.t), is.na(y.t))
  if(any(errorCheck))
    stop("ERROR: Time data is not in x or y.")
  
  
  sum(     .C("pcovcc", 
              as.double(x), #a
              as.double(rep(0,length(x)/(period*align.period)+1)),
              as.double(y), #b
              as.double(x.t), #a
              as.double(rep(0,length(x)/(period*align.period)+1)), #a
              as.double(y.t), #b
              as.integer(length(x)), #na
              as.integer(length(x)/(period*align.period)),
              as.integer(length(y)), #na
              as.integer(period*align.period),
              ans = double(length(x)/(period*align.period)+1), 
              COPY=c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE), 
              PACKAGE="highfrequency")$ans)
}

 # 
 # Realized variance calculation using a kernel estimator.
 #
 rv.kernel <- function(x,                             # Tick Data
                       kernel.type = "rectangular",   # Kernel name (or number)
                       kernel.param = 1,              # Kernel parameter (usually lags)
                       kernel.dofadj = TRUE,          # Kernel Degree of freedom adjustment
                       align.by="seconds",            # Align the tick data to [seconds|minutes|hours]
                       align.period = 1,              # Align the tick data to this many [seconds|minutes|hours]
                       cts = TRUE,                    # Calendar Time Sampling is used
                       makeReturns = FALSE,            # Convert to Returns 
                       type = NULL,                   # Deprectated
                       adj = NULL,                    # Deprectated
                       q = NULL, ...){                     # Deprectated
   # Multiday adjustment: 
   multixts = .multixts(x);
   if(multixts){
     result = apply.daily(x,rv.kernel,kernel.type,kernel.param,kernel.dofadj,
                          align.by,align.period,cts,makeReturns,type,adj,q);
     return(result)}
   if(!multixts){ #Daily estimation:
     
     #
     # Handle deprication
     #
     
     
     if(!is.null(type)){
       warning("type is deprecated, use kernel.type")
       kernel.type=type
     }
     if(!is.null(q)){
       warning("q is deprecated, use kernel.param")
       kernel.param=q
     }
     if(!is.null(adj)){
       warning("adj is deprecated, use kernel.dofadj")
       kernel.dofadj=adj
     }          
     align.period = .getAlignPeriod(align.period, align.by)         
     cdata <- .convertData(x, cts=cts, makeReturns=makeReturns)
     x <- cdata$data
     x <- .alignReturns(x, align.period)
     type <- .kernel.chartoint(kernel.type)
     .C("kernelEstimator", as.double(x), as.double(x), as.integer(length(x)),
        as.integer(kernel.param), as.integer(ifelse(kernel.dofadj, 1, 0)),
        as.integer(type), ab=double(kernel.param + 1),
        ab2=double(kernel.param + 1),
        ans=double(1),PACKAGE="highfrequency")$ans
   }
 }
 
 rc.kernel <- function(x,                             # Tick Data for first asset
                       y,                             # Tick Data for second asset
                       kernel.type = "rectangular",   # Kernel name (or number)
                       kernel.param = 1,              # Kernel parameter (usually lags)
                       kernel.dofadj = TRUE,          # Kernel Degree of freedom adjustment
                       align.by="seconds",            # Align the tick data to [seconds|minutes|hours]
                       align.period = 1,              # Align the tick data to this many [seconds|minutes|hours]
                       cts = TRUE,                    # Calendar Time Sampling is used
                       makeReturns = FALSE,           # Convert to Returns 
                       type = NULL,                   # Deprectated
                       adj = NULL,                    # Deprectated
                       q = NULL,...){                 # Deprectated
   #
   # Handle deprication
   #
   if(!is.null(type)){
     warning("type is deprecated, use kernel.type")
     kernel.type=type
   }
   if(!is.null(q)){
     warning("q is deprecated, use kernel.param")
     kernel.param=q
   }
   if(!is.null(adj)){
     warning("adj is deprecated, use kernel.dofadj")
     kernel.dofadj=adj
   }
   
   align.period = .getAlignPeriod(align.period, align.by)   
   cdata <- .convertData(x, cts=cts, makeReturns=makeReturns)
   
   x <- cdata$data
   x <- .alignReturns(x, align.period)
   cdatay <- .convertData(y, cts=cts, makeReturns=makeReturns)
   y <- cdatay$data
   y <- .alignReturns(y, align.period)
   type <- .kernel.chartoint(kernel.type)
   .C("kernelEstimator", as.double(x), as.double(y), as.integer(length(x)),
      as.integer(kernel.param), as.integer(ifelse(kernel.dofadj, 1, 0)),
      as.integer(type), ab=double(kernel.param + 1),
      ab2=double(kernel.param + 1),
      ans=double(1),PACKAGE="highfrequency")$ans
 }
 
 rKernel <- function(x,type=0)
 {
   type <- .kernel.chartoint(type)
   .C("justKernel", x=as.double(x),type= as.integer(type), ans=as.double(0),PACKAGE="realized")$ans
 }
 
 .kernel.chartoint <- function(type)
 {
   if(is.character(type))
   {
     ans <- switch(casefold(type), 
                   rectangular=0,
                   bartlett=1,
                   second=2,
                   epanechnikov=3,
                   cubic=4,
                   fifth=5,
                   sixth=6,
                   seventh=7,
                   eighth=8,
                   parzen=9,
                   th=10,
                   mth=11,
                   tukeyhanning=10,
                   modifiedtukeyhanning=11,
                   -99)
     if(ans==-99)
     { 
       warning("Invalid Kernel, using Bartlet")
       1
     }
     else
     {
       ans     
     }
   }
   else
   {
     type
   }
 }
 
 rKernel.available <- function()
 {
   c("Rectangular", 
     "Bartlett",
     "Second",
     "Epanechnikov",
     "Cubic",
     "Fifth",
     "Sixth",
     "Seventh",
     "Eighth",
     "Parzen",
     "TukeyHanning",
     "ModifiedTukeyHanning")
 }
 
 
 ## REalized Variance: Average subsampled
 rv.avg <- function(x, period, align.by="seconds", align.period=1, cts=TRUE, makeReturns=FALSE, ...)
 { 
   # Multiday adjustment: 
   multixts = .multixts(x);
   if(multixts){
     result = apply.daily(x,rv.avg,period,align.by,align.period,cts,makeReturns);
     return(result)}
   if(!multixts){ #Daily estimation:
     align.period = .getAlignPeriod(align.period, align.by)
     x<- .alignReturns(.convertData(x, cts=cts, makeReturns=makeReturns)$data, align.period)
     mean(.rv.subsample(x, period, ...))
   }  
 } 
 
 rc.avg <- function(x, y,  period, align.by="seconds", align.period=1, cts=TRUE, makeReturns=FALSE, ...)
 {
   align.period = .getAlignPeriod(align.period, align.by)
   x<- .alignReturns(.convertData(x, cts=cts, makeReturns=makeReturns)$data, align.period)
   y<- .alignReturns(.convertData(y, cts=cts, makeReturns=makeReturns)$data, align.period)
   mean(.rc.subsample(x, y, period))
 }
 
 .rv.subsample <- function(x, period, cts=TRUE, makeReturns=FALSE,...)
 {
   cdata <- .convertData(x, cts=cts, makeReturns=makeReturns)
   x <- cdata$data
   
   .C("subsample", 
      
      as.double(x), #a
      as.double(x), #na
      as.integer(length(x)), #na
      as.integer(length(x)/period),       #m
      as.integer(period), #period 
      as.double(rep(0,as.integer(length(x)/period +1))), #tmp
      as.double(rep(0,as.integer(length(x)/period +1))), #tmp
      as.integer(length(x)/period), #tmpn
      ans = double(period), 
      COPY=c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE), 
      PACKAGE="highfrequency")$ans
 }
 
 
 .rc.subsample <- function(x, y, period, cts=TRUE, makeReturns=FALSE, ... )
 {
   cdata <- .convertData(x, cts=cts, makeReturns=makeReturns)
   x <- cdata$data
   
   cdatay <- .convertData(y, cts=cts, makeReturns=makeReturns)
   y <- cdatay$data
   
   .C("subsample", 
      as.double(x), #a
      as.double(y), #na
      as.integer(length(x)), #na
      as.integer(length(x)/period),       #m
      as.integer(period), #period 
      as.double(rep(0,as.integer(length(x)/period +1))), #tmp
      as.double(rep(0,as.integer(length(x)/period +1))), #tmp
      as.integer(length(x)/period), #tmpn
      ans = double(period), 
      COPY=c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE), 
      PACKAGE="highfrequency")$ans               
 }
 
 
 #########################################################################
 #
 # Utility Functions from realized package Scott Payseur
 #
 #########################################################################
.alignedAccum <- function(x,y, period, cum=TRUE, makeReturns...)
{
  x<-.accum.naive(x,x, period)
  y<-.accum.naive(y,y, period)
  if(cum)
  {
    ans <- cumsum(x*y)
  }
  else
  {
    ans <- x*y     
  }
  ans
}


.accum.naive <- function(x,y, period, ...)
{
  .C("rv", 
     as.double(x), #a
     as.double(y), #b
     as.integer(length(x)), #na
     as.integer(period), #period 
     tmpa = as.double(rep(0,as.integer(length(x)/period +1))), #tmp
     as.double(rep(0,as.integer(length(x)/period +1))), #tmp
     as.integer(length(x)/period), #tmpn
     ans = double(1), 
     COPY=c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE), 
     PACKAGE="highfrequency")$tmpa     
}


.alignReturns <- function(x, period, ...)
{
  .C("rv", 
     as.double(x), #a
     as.double(x), #b
     as.integer(length(x)), #na
     as.integer(period), #period 
     tmpa = as.double(rep(0,as.integer(length(x)/period +1))), #tmp
     as.double(rep(0,as.integer(length(x)/period +1))), #tmp
     as.integer(length(x)/period), #tmpn
     ans = double(1), 
     COPY=c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE), 
     PACKAGE="highfrequency")$tmpa     
}

.getAlignPeriod <- function(align.period, align.by)
{   
  align.by <- gsub("(^ +)|( +$)", "",align.by) # Trim White
  
  if(casefold(align.by)=="min" || casefold(align.by)=="mins" ||casefold(align.by)=="minute"||casefold(align.by)=="minutes"||casefold(align.by)=="m"){
    ans <- align.period * 60
  }
  if(casefold(align.by)=="sec" || casefold(align.by)=="secs" ||casefold(align.by)=="second"||casefold(align.by)=="seconds"||casefold(align.by)=="s"||casefold(align.by)==""){
    ans <- align.period
  }
  if(casefold(align.by)=="hour" || casefold(align.by)=="hours" ||casefold(align.by)=="h"){
    ans <- align.period * 60 * 60
  }
  return(ans)
}


.alignIndices <- function(x, period, ...)
{
  .C("rvperiod", 
     as.double(x), #a
     as.double(x), #b
     as.integer(length(x)), #na
     as.integer(period), #period 
     tmpa = as.double(rep(max(x),as.integer(length(x)/period +1))), #tmp
     as.double(rep(0,as.integer(length(x)/period +1))), #tmp
     as.integer(length(x)/period), #tmpn
     ans = double(1), 
     COPY=c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE), 
     PACKAGE="highfrequency")$tmpa     
}

.multixts <- function( x, y=NULL)
{ 
  if(is.null(y)){
    test = is.xts(x) && (ndays(x)!=1);
    return(test);}
  if(!is.null(y)){
    test = (is.xts(x) && (ndays(x)!=1)) || ( ndays(y)!=1 && is.xts(y) );
    if( test ){
      test1 = dim(y) == dim(x);
      if(!test1){ warning("Please make sure x and y have the same dimensions") }
      if(test1){  test = list( TRUE, cbind(x,y) ); return(test) }
    }
  }
}      

.convertData <- function(x, cts = TRUE, millisstart=NA, millisend=NA, makeReturns=FALSE)
{
  if(is.null(x))
  {
    return(NULL)
  }
  if("realizedObject" %in% class(x))
  {
    return(x)
  }
  if(is.null(version$language)) #splus
  {
    if("timeSeries" %in% class(x))
    {
      x <- x[!is.na(x[,1]),1]
      if(cts)
      {
        return(ts2realized(x, millisstart=millisstart, millisend=millisend, make.returns=makeReturns)$cts)
      }
      else
      {
        return(ts2realized(x, millisstart=millisstart, millisend=millisend, make.returns=makeReturns)$tts)
      }
      #list(milliseconds = positions(x)@.Data[[2]], data = matrix(seriesData(x), ncol=1))
    }
  }
  
  if("xts" %in% class(x))
  {
    xtmp <- x
    x <- list() 
    x$data <- as.numeric(xtmp[,1])
    
    x$milliseconds <- (as.POSIXlt(time(xtmp))$hour*60*60 + as.POSIXlt(time(xtmp))$min*60 + as.POSIXlt(time(xtmp))$sec )*1000
    if(is.na(millisstart))
    {
      millisstart = x$milliseconds[[1]]
    }
    if(is.na(millisend))
    {
      millisend = x$milliseconds[[length(x$milliseconds)]]
    }
    
    cat(paste("xts -> realizedObject [", as.character(time(xtmp[1])), " :: ", as.character(time(xtmp[length(x$milliseconds)])), "]", sep=""),"\n")
  }
  
  if(is.na(millisstart))
  {
    millisstart=34200000
  }
  if(is.na(millisend))
  {
    millisend=57600000
  }    
  if("list" %in% class(x))
  {
    if(sum(names(x) == c("tts", "cts")) == 2) #realized obj  
    {
      if(cts)
      {
        return(x$cts)
      }
      else
      {
        return(x$tts)
      }
    }
    if(sum(names(x) == c("data", "milliseconds")) == 2) 
    {
      if(makeReturns)
      {                                           # only works on non cts prices
        errcheck <- try(.getReturns(.sameTime(x$data, x$milliseconds)))
        if(class(errcheck) != "Error")
        {
          x$data <- errcheck
          x$milliseconds <- intersect(x$milliseconds,x$milliseconds)
        }
        else
        {
          warning("It appears that these are already returns.  Not creating returns")
        }
      }          
      else
      {
        x$data <- .sameTime(x$data, x$milliseconds)
        x$milliseconds <- intersect(x$milliseconds,x$milliseconds)
      }          
      if(cts)
      {
        toret <- list(data=.toCts(x=x$data, millis=intersect(x$milliseconds,x$milliseconds), millisstart=millisstart, millisend=millisend),
                      milliseconds=(((millisstart/1000)+1):(millisend/1000))*1000)
        return(toret)
      }
      else
      {
        toret <- list(data=x$data, 
                      milliseconds=intersect(x$milliseconds,x$milliseconds))
        return(toret)
      }
    }
  }
  
  
  if("timeSeries" %in% class(x))
  {
    stop("R timeSeries not implmented yet. Convert to realized object")
  }
  return(list(milliseconds = 1:dim(as.matrix(x))[[1]], data = as.matrix(x)))  # not an object, fake the milliseconds and return
}

.getReturns <- function(x)
{
  x <- as.numeric(x)
  n <- length(x)[[1]]
  return(log(x[2:n]) - log(x[1:(n-1)]))
}

.sameTime <- function(x, millis)
{
  .C("sametime", 
     as.double(x), #a
     as.integer(length(x)), #na
     as.integer(millis), #millis
     ans = double(length(union(millis,millis))), #tts
     COPY=c(FALSE,FALSE,FALSE,TRUE), 
     PACKAGE="highfrequency")$ans
}


data.toCts <- function(x, millis, millisstart=34200000, millisend=57600000)
{
  .toCts(x=x, millis=millis, millisstart=millisstart, millisend=millisend)
}

.toCts <- function(x, millis, millisstart=34200000, millisend=57600000)
{
  .C("tocts", 
     as.double(x), #a
     as.integer(length(x)),
     as.integer(millis), #millis
     as.integer(millisstart),
     as.integer(millisend),
     ans = double(((millisend-millisstart)/1000)), #cts
     COPY=c(FALSE,FALSE,FALSE,FALSE,TRUE), 
     PACKAGE="highfrequency")$ans
}

data.toReturns <- function(x)
{
  x <- as.numeric(x)   
  n <- length(x)
  log(x[2:n]) - log(x[1:(n-1)])
}
 
 ts2realized <- function(x, make.returns=TRUE,millisstart=34200000, millisend=57600000)
 {
   warning("SPLUS is no longer supported.")
   #     thedata <- data.sameTime(as.numeric(as.matrix(x@data)), .ts2millis(x))
   
   #    if(make.returns)
   #    {
   
   #          thedata <- .getReturns(thedata)
   
   #          tts <- list(data=as.numeric(thedata), milliseconds=intersect(.ts2millis(x),.ts2millis(x))[-1])
   #          cts <- list(data=.toCts(x=as.numeric(thedata), millis=intersect(.ts2millis(x),.ts2millis(x)), millisstart=millisstart, millisend=millisend),
   #               milliseconds=(((millisstart/1000)+1):(millisend/1000))*1000)
   #    }
   #    else
   #    {
   #          tts <- list(data=as.numeric(thedata), milliseconds=intersect(.ts2millis(x),.ts2millis(x)))
   #          cts <- list(data=.toCts(x=as.numeric(thedata), millis=intersect(.ts2millis(x),.ts2millis(x)), millisstart=millisstart, millisend=millisend),
   #               milliseconds=(((millisstart/1000)+1):(millisend/1000))*1000)
   
   
   #    }
   #     ans <- list(tts=tts, cts=cts)     
   #     ans
 }
 
 
# Make positive definite
makePsd = function(S,method="covariance"){
  if(method=="correlation" & !any(diag(S)<=0) ){
    # Fan, J., Y. Li, and K. Yu (2010). Vast volatility matrix estimation using high frequency data for portfolio selection.
    D = matrix(diag(S)^(1/2),ncol=1)
    R = S/(D%*%t(D))
    out = eigen( x=R , symmetric = TRUE )
    mGamma = t(out$vectors)
    vLambda = out$values
    vLambda[vLambda<0] = 0
    Apsd = t(mGamma)%*%diag(vLambda)%*%mGamma
    dApsd = matrix(diag(Apsd)^(1/2),ncol=1)
    Apsd = Apsd/(dApsd%*%t(dApsd))
    D = diag( as.numeric(D)  , ncol = length(D) )
    Spos = D%*%Apsd%*%D
    return(Spos)
    #check:  eigen(Apsd)$values
  }else{
    # Rousseeuw, P. and G. Molenberghs (1993). Transformation of non positive semidefinite correlation matrices. Communications in Statistics - Theory and Methods 22, 965-984.
    out = eigen( x=S , symmetric = TRUE )
    mGamma = t(out$vectors)
    vLambda = out$values
    vLambda[vLambda<0] = 0
    Apsd = t(mGamma)%*%diag(vLambda)%*%mGamma
  }
}

### Do a daily apply but with list as output:
.applygetlist = function(x, FUN,cor=FALSE,align.by=NULL,align.period=NULL,makeReturns=FALSE,makePsd=FALSE,...){
  on="days";k=1;
  x <- try.xts(x, error = FALSE); 
  INDEX = endpoints(x,on=on,k=k); 
  D = length(INDEX)-1; 
  result = list(); 
  FUN <- match.fun(FUN);
  for(i in 1:(length(INDEX)-1)){
    result[[i]] = FUN(x[(INDEX[i] + 1):INDEX[i + 1]],cor,align.by,align.period,makeReturns,makePsd);
  }
  return(result);
}
 
# Aggregation function: FAST previous tick aggregation
 .aggregatets = function (ts, on = "minutes", k = 1) 
 {
   if (on == "secs" | on == "seconds") {
     secs = k
     tby = paste(k, "sec", sep = " ")
   } 
   if (on == "mins" | on == "minutes") {
     secs = 60 * k
     tby = paste(60 * k, "sec", sep = " ")
   } 
   if (on == "hours"){
     secs = 3600 * k;
     tby = paste(3600 * k, "sec", sep = " ");
   } 
   g = base:::seq(start(ts), end(ts), by = tby);
   rawg = as.numeric(as.POSIXct(g, tz = "GMT"));
   newg = rawg + (secs - rawg%%secs);
   g    = as.POSIXct(newg, origin = "1970-01-01",tz = "GMT");
   ts3 = na.locf(merge(ts, zoo(, g)))[as.POSIXct(g, tz = "GMT")];
   return(ts3)
 } #Very fast and elegant way to do previous tick aggregation :D!
 
 #Make Returns: 
 makeReturns = function (ts) 
 {
   l = dim(ts)[1]
   x = matrix(as.numeric(ts), nrow = l)
   x[(2:l), ] = log(x[(2:l), ]) - log(x[(1:(l - 1)), ])
   x[1, ] = rep(0, dim(ts)[2])
   x = xts(x, order.by = index(ts))
   return(x);
 }
 
 #Refresh Time:
 refreshTime = function (pdata) 
 {
   dim = length(pdata)
   lengths = rep(0, dim + 1)
   for (i in 1:dim) {
     lengths[i + 1] = length(pdata[[i]])
   }
   minl = min(lengths[(2:(dim + 1))])
   lengths = cumsum(lengths)
   alltimes = rep(0, lengths[dim + 1])
   for (i in 1:dim) {
     alltimes[(lengths[i] + 1):lengths[i + 1]] = as.numeric(as.POSIXct(index(pdata[[i]]), 
                                                                       tz = "GMT"))
   }
   x = .C("refreshpoints", as.integer(alltimes), as.integer(lengths), 
          as.integer(rep(0, minl)), as.integer(dim), as.integer(0), 
          as.integer(rep(0, minl * dim)), as.integer(minl))
   newlength = x[[5]]
   pmatrix = matrix(ncol = dim, nrow = newlength)
   for (i in 1:dim) {
     selection = x[[6]][((i - 1) * minl + 1):(i * minl)]
     pmatrix[, i] = pdata[[i]][selection[1:newlength]]
   }
   time = as.POSIXct(x[[3]][1:newlength], origin = "1970-01-01", 
                     tz = "GMT")
   resmatrix = xts(pmatrix, order.by = time)
   return(resmatrix)
 }
 
 ########################################################
 # 1 Univariate measures : 
 ########################################################
 # MinRV : 
minRV <- function(rdata,align.by=NULL,align.period=NULL,makeReturns=FALSE,...){
  if(hasArg(data)){ rdata = data }
  
   # Multiday adjustment: 
   multixts = .multixts(rdata); 
   if(multixts){ 
    result = apply.daily(rdata,minRV,align.by,align.period,makeReturns); 
    return(result)} 
  if(!multixts){
    if((!is.null(align.by))&&(!is.null(align.period))){
      rdata = .aggregatets(rdata, on=align.by, k=align.period);
    } 
    if(makeReturns){  rdata = makeReturns(rdata) }  
    q = as.zoo(abs(as.numeric(rdata))); #absolute value
    q = as.numeric(rollapply(q, width=2, FUN=min,by = 1, align="left"));
    N = length(q)+1; #number of obs
    minrv = (pi/(pi-2))*(N/(N-1))*sum(q^2);
  return(minrv) 
  }  
}  

 # MedRV
medRV <- function(rdata,align.by=NULL,align.period=NULL,makeReturns=FALSE,...){
  if(hasArg(data)){ rdata = data }
  
  # Multiday adjustment: 
  multixts = .multixts(rdata); 
  if(multixts){ 
    result = apply.daily(rdata,medRV,align.by,align.period,makeReturns); 
    return(result)} 
  if(!multixts){
    if((!is.null(align.by))&&(!is.null(align.period))){
      rdata = .aggregatets(rdata, on=align.by, k=align.period);
    } 
    if(makeReturns){  rdata = makeReturns(rdata) }  
    q = abs(as.numeric(rdata)); #absolute value
    q = as.numeric(rollmedian(q, k=3, align="center"));
    N = length(q) + 2;
    medrv = (pi/(6-4*sqrt(3)+pi))*(N/(N-2))*sum(q^2);
  return(medrv)
  }
}


 ########################################################
 ## 2 Multivariate measures:    
 ########################################################
 # Realized Covariation (RCov): 
rCov = function(rdata, cor=FALSE, align.by=NULL,align.period=NULL, makeReturns = FALSE, ...) 
{
  if (hasArg(data)){ 
    rdata = data; 
  } 
  # Multiday adjustment: 
  multixts = .multixts(rdata); 
  if(multixts){ 
    if(is.null(dim(rdata))){  n = 1
    }else{ n = dim(rdata)[2] }
     if( n==1 ){ result = apply.daily(rdata,rCov,align.by=align.by,align.period=align.period,makeReturns=makeReturns) }
     if( n >1 ){ result = .applygetlist(rdata,rCov,cor=cor,align.by=align.by,align.period=align.period,makeReturns=makeReturns) }    
    return(result)} 
  if(!multixts){ #single day code
    if((!is.null(align.by))&&(!is.null(align.period))){
      rdata = .aggregatets(rdata, on=align.by, k=align.period);
    } 
    if(makeReturns){  rdata = makeReturns(rdata) }  
  if (is.null(dim(rdata))) {  n = 1
  }else { n = dim(rdata)[2]}
    
  if (n == 1) {
    return(RV(rdata))
  }
  if (n > 1) {
    #        rdata = na.locf(rdata, na.rm = FALSE)
    
    rdata = as.matrix(rdata)
    covariance = t(rdata) %*% rdata
    if (cor == FALSE) {
      return(covariance)
    }
    if (cor == TRUE){
      sdmatrix = sqrt(diag(diag(covariance)));
      rcor = solve(sdmatrix) %*% covariance %*% solve(sdmatrix)
      return(rcor)
    }
  }
  }
}

  # Realized Bi-power covariance:
  # Realized BiPower Covariation (RBPCov)
rBPCov = function( rdata, cor=FALSE, align.by=NULL,align.period=NULL, makeReturns = FALSE, makePsd=FALSE,...) 
{
  if(hasArg(data)){ rdata = data }

  # Multiday adjustment: 
  multixts = .multixts(rdata); 
  if(multixts){ 
    if(is.null(dim(rdata))){  n = 1
    }else{ n = dim(rdata)[2] }
    if( n==1 ){ result = apply.daily(rdata,rBPCov,align.by=align.by,align.period=align.period,makeReturns=makeReturns,makePsd) }
    if( n >1 ){ result = .applygetlist(rdata,rBPCov,cor=cor,align.by=align.by,align.period=align.period,makeReturns=makeReturns,makePsd) }    
    return(result)} 
  if(!multixts){ #single day code
    if((!is.null(align.by))&&(!is.null(align.period))){
      rdata = .aggregatets(rdata, on=align.by, k=align.period);
    } 
    if(makeReturns){  rdata = makeReturns(rdata) }  
    if (is.null(dim(rdata))) {  n = 1
    }else { n = dim(rdata)[2]}
    
    if (n == 1) {
      return(RBPVar(rdata))
    }
    
  ## ACTUAL RBPCOV calculation:   
  if( n > 1 ){    
    #    rdatacheck(rdata,multi=TRUE);
    
    rdata  = as.matrix(rdata);
    n = dim(rdata)[2]
    cov = matrix(rep(0, n * n), ncol = n)
    diagonal = c()
    for (i in 1:n) {
      diagonal[i] = RBPVar(rdata[, i])
    }
    diag(cov) = diagonal
    for (i in 2:n) {
      for (j in 1:(i - 1)) {
        cov[i, j] = cov[j, i] = RBPCov_bi(rdata[, i], rdata[, j])
      }
    }
    
    if(cor==FALSE){
      if(makePsd==TRUE){cov = makePsd(cov);}
      return(cov)
    }
    if(cor==TRUE){
      sdmatrix = sqrt(diag(diag(cov)));
      rcor = solve(sdmatrix)%*%cov%*%solve(sdmatrix);
      if(makePsd==TRUE){rcor = makePsd(rcor);}
      return(rcor)}
     } 
   } 
 }

  # rOWCov: Realized Outlyingness Covariation : 
  # NOT YET IMPLEMENTED: MULTIDAY XTS SUPPORT...
rOWCov = function (rdata, cor=FALSE, align.by=NULL,align.period=NULL, makeReturns = FALSE, seasadjR = NULL, wfunction = "HR" , alphaMCD = 0.75, alpha = 0.001,...){
    if(hasArg(data)){ rdata = data }
    if(is.null(seasadjR)) { seasadjR = rdata }
    multixts = .multixts(rdata); 
    if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input"); }
      
    # Aggregate:
    if((!is.null(align.by))&&(!is.null(align.period))){
      rdata = .aggregatets(rdata, on=align.by, k=align.period);
      seasadjR = .aggregatets(seasadjR, on=align.by, k=align.period);
    }     
    if( makeReturns ){ rdata = makeReturns(rdata); 
    if( !is.null(seasadjR) ){ seasadjR = makeReturns(seasadjR)} }
        
    if(is.null(dim(rdata))){ n=1 }else{ n = dim(rdata)[2]}        
    
    if( n == 1 ){ return( ROWVar( rdata , seasadjR = seasadjR , wfunction = wfunction , alphaMCD = alphaMCD , alpha = alpha ))}
    
    if( n > 1 ){ 
      rdatacheck(rdata,multi=TRUE);
      
      require(robustbase)
      rdata = as.matrix(rdata); seasadjR = as.matrix(seasadjR);
      intraT = nrow(rdata)
      N = ncol(rdata)
      perczeroes = apply(seasadjR, 2, countzeroes)/intraT
      select = c(1:N)[perczeroes < 0.5]
      seasadjRselect = seasadjR[, select]
      N = ncol(seasadjRselect)
      MCDobject = try(covMcd(x = seasadjRselect, alpha = alphaMCD))
      if (length(MCDobject$raw.mah) > 1) {
        betaMCD = 1-alphaMCD; asycor = betaMCD/pchisq( qchisq(betaMCD,df=N),df=N+2 )
        MCDcov = (asycor*t(seasadjRselect[MCDobject$best,])%*%seasadjRselect[MCDobject$best,])/length(MCDobject$best);  
        invMCDcov = solve(MCDcov) ; outlyingness = rep(0,intraT);
        for( i in 1:intraT ){ 
          outlyingness[i] = matrix(seasadjRselect[i,],ncol=N)%*%invMCDcov%*%matrix(seasadjRselect[i,],nrow=N)    }
      }
      else {
        print(c("MCD cannot be calculated")); stop();
      }
      k = qchisq(p = 1 - alpha, df = N)
      outlierindic = outlyingness > k
      weights = rep(1, intraT)
      if( wfunction == "HR" ){
        weights[outlierindic] = 0
        wR = sqrt(weights) * rdata
        covariance = (conHR(di = N, alpha = alpha) * t(wR) %*% wR)/mean(weights);
        if(cor==FALSE){return(covariance)}
        if(cor==TRUE){
          sdmatrix = sqrt(diag(diag(covariance)));
          rcor = solve(sdmatrix)%*%covariance%*%solve(sdmatrix);
          return(rcor)
        }
      }
      if( wfunction == "SR" ){
        weights[outlierindic] = k/outlyingness[outlierindic]
        wR = sqrt(weights) * rdata
        covariance = (conhuber(di = N, alpha = alpha) * t(wR) %*% wR)/mean(weights);
        if(cor==FALSE){return(covariance)}
        if(cor==TRUE){
          sdmatrix = sqrt(diag(diag(covariance)));
          rcor = solve(sdmatrix)%*%covariance%*%solve(sdmatrix);
          return(rcor)
        } 
      } 
    } 
  } 

 ### Two time scale covariance : 
rTSCov = function (pdata, cor = FALSE, K = 300, J = 1, K_cov = NULL, J_cov = NULL, 
                  K_var = NULL, J_var = NULL, makePsd = FALSE) 
{
  if (!is.list(pdata)) {
    n = 1
  }
  else {
    n = length(pdata)
    if (n == 1) {
      pdata = pdata[[1]]
    }
  }
  if (n == 1) {
    multixts = .multixts(pdata); 
    if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input"); }
    return(TSRV(pdata, K = K, J = J))
  }
  if (n > 1) {
    multixts = .multixts(pdata[[1]]); 
    if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input"); }
    
        
    cov = matrix(rep(0, n * n), ncol = n)
    if( is.null(K_cov)){ K_cov = K }
    if( is.null(J_cov)){ J_cov = J }
    if( is.null(K_var)){ K_var = rep(K,n) }
    if( is.null(J_var)){ J_var = rep(J,n) }
    
    diagonal = c()
    for (i in 1:n) {
      diagonal[i] = TSRV(pdata[[i]], K = K_var[i], J = J_var[i])
    }
    diag(cov) = diagonal
    
    for (i in 2:n) {
      for (j in 1:(i - 1)) {
        cov[i, j] = cov[j, i] = TSCov_bi(pdata[[i]], 
                                         pdata[[j]], K = K_cov, J = J_cov)
      }
    }
    if (cor == FALSE) {
      if (makePsd == TRUE) {
        cov = makePsd(cov)
      }
      return(cov)
    }
    if (cor == TRUE) {
      invsdmatrix = try(solve(sqrt(diag(diag(cov)))), silent = F)
      if (!inherits(invsdmatrix, "try-error")) {
        rcor = invsdmatrix %*% cov %*% invsdmatrix
        if (makePsd == TRUE) {
          rcor = makePsd(rcor)
        }
        return(rcor)
      }
    }
  }
}

 ### ROBUST Two time scale covariance : 
rRTSCov = function (pdata, cor = FALSE, startIV = NULL, noisevar = NULL, 
                   K = 300, J = 1, 
                   K_cov = NULL , J_cov = NULL,
                   K_var = NULL , J_var = NULL , 
                   eta = 9, makePsd = FALSE){
  if (!is.list(pdata)) {
    n = 1
  }
  else {
    n = length(pdata)
    if (n == 1) {
      pdata = pdata[[1]]
    }
  }
  if (n == 1) {
    multixts = .multixts(pdata); 
    if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input"); }    
    return(RTSRV(pdata, startIV = startIV, noisevar = noisevar, 
                 K = K, J = J, eta = eta))
  }
  if (n > 1) {
    multixts = .multixts(pdata[[1]]); 
    if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input"); }
    
    cov = matrix(rep(0, n * n), ncol = n)
    diagonal = c()
    if( is.null(K_cov)){ K_cov = K }
    if( is.null(J_cov)){ J_cov = J }  
    if( is.null(K_var)){ K_var = rep(K,n) }
    if( is.null(J_var)){ J_var = rep(J,n) }        
    for (i in 1:n){ 
      diagonal[i] = RTSRV(pdata[[i]], startIV = startIV[i], 
                          noisevar = noisevar[i], K = K_var[i], J = J_var[i], 
                          eta = eta)
    }
    diag(cov) = diagonal
    if( is.null(K_cov)){ K_cov = K }
    if( is.null(J_cov)){ J_cov = J }                        
    for (i in 2:n) {
      for (j in 1:(i - 1)) {
        cov[i, j] = cov[j, i] = RTSCov_bi(pdata[[i]], 
                                          pdata[[j]], startIV1 = diagonal[i], startIV2 = diagonal[j], 
                                          noisevar1 = noisevar[i], noisevar2 = noisevar[j], 
                                          K = K_cov, J = J_cov, eta = eta)
      }
    }
    if (cor == FALSE) {
      if (makePsd == TRUE) {
        cov = makePsd(cov)
      }
      return(cov)
    }
    if (cor == TRUE) {
      invsdmatrix = try(solve(sqrt(diag(diag(cov)))), silent = F)
      if (!inherits(invsdmatrix, "try-error")) {
        rcor = invsdmatrix %*% cov %*% invsdmatrix
        if (makePsd == TRUE) {
          rcor = makePsd(rcor)
        }
        return(rcor)
      }
    }
  }
}

 ## Threshold covariance: 
rThresholdCov = function( rdata, cor=FALSE, align.by=NULL, align.period=NULL, makeReturns=FALSE,...){
  if(hasArg(data)){ rdata = data } 
  rdatacheck(rdata,multi=TRUE); 

  # Multiday adjustment: 
  multixts = .multixts(rdata); 
  multixts = .multixts(rdata); 
  if(multixts){ 
    if(is.null(dim(rdata))){  n = 1
    }else{ n = dim(rdata)[2] }
    if( n==1 ){ result = apply.daily(rdata,rThresholdCov,cor=cor,align.by=align.by,align.period=align.period,makeReturns=makeReturns) }
    if( n >1 ){ result = .applygetlist(rdata,rThresholdCov,cor=cor,align.by=align.by,align.period=align.period,makeReturns=makeReturns) }    
    return(result)} 
  if( !multixts ){ #single day code
    if((!is.null(align.by))&&(!is.null(align.period))){
       rdata = .aggregatets(rdata, on=align.by, k=align.period);
    } 
    if(makeReturns){ rdata = makeReturns(rdata) }  
        
    rdata=as.matrix(rdata);
    n=dim(rdata)[1];						                  # number of observations
    delta = 1/n;
    rbpvars = apply(rdata,2,FUN=RBPVar);		      # bipower variation per stock
    tresholds = 3*sqrt(rbpvars)*(delta^(0.49));	  # treshold per stock
    tresmatrix = matrix(rep(tresholds,n),ncol=length(tresholds),nrow=n,byrow=TRUE); 
    condition = abs(rdata) > tresmatrix;
    rdata[condition] = 0;
    covariance = rCov(rdata);
  
  if(cor==FALSE){ return(covariance) }
  if(cor==TRUE){
    sdmatrix = sqrt(diag(diag(covariance)));
    rcor = solve(sdmatrix)%*%covariance%*%solve(sdmatrix);
    return(rcor)}
  } 
} 

## Hayashi Yoshida covariance estimator
rHYCov = function(rdata, cor = FALSE, period = 1, align.by = "seconds", align.period = 1, cts = TRUE, makeReturns = FALSE, makePsd=TRUE, ...) 
{
  if (!is.list(rdata)){
    stop('The rdata input is not a list. Please provide a list as input for this function. Each list-item should contain the series for one asset.')
  }else{
    n = length(rdata)
    if(n == 1){
        stop('Please provide a list with multiple list-items as input. You cannot compute covariance from a single price series.')      
      }
  }  
    multixts = .multixts(rdata[[1]]); 
    if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input")}
  
    cov = matrix(rep(0, n * n), ncol = n);
    diagonal = c();  
     for (i in 1:n){ 
      diagonal[i] = rCov( rdata[[i]], align.by = align.by, align.period = align.period,makeReturns=makeReturns ); 
     } 
    diag(cov) = diagonal;
    for (i in 2:n){
      for (j in 1:(i - 1)){
       cov[i, j] = cov[j, i] = rc.hy( x=rdata[[i]], y=rdata[[j]], period = period,align.by=align.by, 
                                     align.period = align.period, cts = cts, makeReturns = makeReturns);       
      }
    }
  
    if (cor == FALSE) {
      if (makePsd == TRUE) {
        cov = makePsd(cov)
      }
      return(cov)
    }
    if (cor == TRUE){
      invsdmatrix = try(solve(sqrt(diag(diag(cov)))), silent = F)
      if (!inherits(invsdmatrix, "try-error")) {
        rcor = invsdmatrix %*% cov %*% invsdmatrix
        if (makePsd == TRUE) {
          rcor = makePsd(rcor)
        }
        return(rcor)
      }
    }
}  

## Kernel Covariance Estimator: 
rKernelCov = function( rdata, cor=FALSE, kernel.type = "rectangular", kernel.param = 1, 
                       kernel.dofadj = TRUE, align.by = "seconds", align.period = 1, 
                       cts = TRUE, makeReturns = FALSE, type = NULL, adj = NULL, 
                       q = NULL, ...)
{
  if(!is.list(rdata)){ # In case of only one stock this makes sense
     if(is.null(dim(rdata))){  n = 1
     }else{ n = dim(rdata)[2] }
     if( n == 1 ){ result = rv.kernel(rdata, cor=cor, kernel.type = kernel.type, kernel.param = kernel.param, kernel.dofadj = kernel.dofadj, 
                                      align.by = align.by, align.period = align.period, cts = cts, makeReturns = makeReturns, 
                                      type = type, adj = adj, q = q)}
     if( n >  1 ){ stop("Please provide a list with one list-item per stock as input.")  }    
     return(result)    
     #stop('The rdata input is not a list. Please provide a list as input for this function. Each list-item should contain the series for one asset.')
    }else{
    n = length(rdata);
    if(n == 1){
      result = rv.kernel(rdata[[1]], cor=cor,kernel.type = kernel.type, kernel.param = kernel.param, kernel.dofadj = kernel.dofadj, 
                         align.by = align.by, align.period = align.period, cts = cts, makeReturns = makeReturns, 
                         type = type, adj = adj, q = q); return(result);
              }
    if( n>1 ){
    
     multixts = .multixts(rdata[[1]]); 
     if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input")}
  
     cov = matrix(rep(0, n * n), ncol = n);
     diagonal = c();  
     for( i in 1:n ){ 
      diagonal[i] = rv.kernel(rdata[[i]], cor=cor,kernel.type = kernel.type, kernel.param = kernel.param, kernel.dofadj = kernel.dofadj, 
                              align.by = align.by, align.period = align.period, cts = cts, makeReturns = makeReturns, 
                              type = type, adj = adj, q = q);        
     } 
     diag(cov) = diagonal;
      for (i in 2:n){
         for (j in 1:(i - 1)){
         cov[i, j] = cov[j, i] = rc.kernel(x = rdata[[i]], y = rdata[[j]], kernel.type = kernel.type, kernel.param = kernel.param, 
                                  kernel.dofadj = kernel.dofadj, align.by = align.by, align.period = align.period, 
                                  cts = cts, makeReturns = makeReturns, type = type, adj = adj,q = q);   
      }
    }
  
  if(cor == FALSE){
    cov = makePsd(cov);
    return(cov)
  }
  if(cor == TRUE){
    invsdmatrix = try(solve(sqrt(diag(diag(cov)))), silent = F)
    if (!inherits(invsdmatrix, "try-error")) {
      rcor = invsdmatrix %*% cov %*% invsdmatrix
      return(rcor)
    }
  }
 }
 }
}

## Average subsample estimator: 
rAVGCov = function( rdata, cor = FALSE, period = 1, align.by = "seconds", align.period = 1, cts = TRUE, makeReturns = FALSE, ...){
  if (!is.list(rdata)){ 
     if(is.null(dim(rdata))){  n = 1
     }else{ n = dim(rdata)[2] }
     if( n == 1 ){ result = rv.avg( rdata, period=period, align.by = align.by, align.period = align.period, cts = cts, makeReturns = makeReturns ); return(result)  }
     if( n >  1 ){ stop('The rdata input is not a list. Please provide a list as input for this function. Each list-item should contain the series for one asset.') }
  }
  if(is.list(rdata)){
    n = length(rdata)
    if( n == 1 ){ result = rv.avg(rdata[[1]], period=period, align.by = align.by, align.period = align.period, cts = cts, makeReturns = makeReturns ); return(result) }
    if( n > 1){
    multixts = .multixts(rdata[[1]]); 
    if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input")}
  
  cov = matrix(rep(0, n * n), ncol = n);
  diagonal = c(); 
  for(i in 1:n){ 
    diagonal[i] = rv.avg( rdata[[i]], period=period, align.by = align.by, align.period = align.period, cts = cts, makeReturns = makeReturns );
  } 
  diag(cov) = diagonal;
  for (i in 2:n){
    for (j in 1:(i - 1)){
      cov[i, j] = cov[j, i] = rc.avg( x=rdata[[i]], y=rdata[[j]], period=period, align.by = align.by, 
                                      align.period = align.period, cts = cts, makeReturns = makeReturns);       
    }
  }
  
  if (cor == FALSE) {
      cov = makePsd(cov)
    return(cov)
  }
  if (cor == TRUE){
    invsdmatrix = try(solve(sqrt(diag(diag(cov)))), silent = F)
    if (!inherits(invsdmatrix, "try-error")) {
      rcor = invsdmatrix %*% cov %*% invsdmatrix
        rcor = makePsd(rcor)
      return(rcor)
    }
  }
 } #List-length > 1
 } #If-list condition
}  #end rAVGCov