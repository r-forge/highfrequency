


minRQ = function(rdata,align.by=NULL,align.period = NULL, makeReturns = FALSE,...)
{
  if (hasArg(data)) 
    {
    rdata = data
  }
  multixts = highfrequency:::.multixts(rdata)
  if (multixts) 
    {
    result = apply.daily(rdata, minRQ, align.by, align.period, makeReturns) ##Check FUN
    return(result)
  }
  if (!multixts) 
    {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata = highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if(makeReturns)
    {
    rdata = makeReturns(rdata)
    }
    q=as.zoo(abs(as.numeric(rdata)))
    q=as.numeric(rollapply(q, width = 2, FUN = min, by = 1, align = "left"))
    N=length(q)+1
    minRQ=pi*N/(3*pi-8)*(N/(N-1))*sum(q^4)
  return(minRQ)
  }
}


medRQ = function(rdata, align.by = NULL, align.period = NULL, makeReturns = FALSE,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  multixts = highfrequency:::.multixts(rdata)
  if (multixts) 
  {
    result = apply.daily(rdata, medRQ, align.by, align.period, makeReturns) ##Check FUN
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata = highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if(makeReturns)
    {
      rdata = makeReturns(rdata)
    }
  q=abs(as.numeric(rdata))
  q=as.numeric(rollmedian(q, k = 3))
  N = length(q)+2
  medRQ = 3*pi*N/(9*pi+72-53*sqrt(3))*(N/(N-2))*sum(q^4)
  return(medRQ)
  } 
}


rQuar = function(rdata, align.by = NULL, align.period = NULL, makeReturns = FALSE,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  multixts = highfrequency:::.multixts(rdata)
  if (multixts) 
  {
    result = apply.daily(rdata, rQuar, align.by, align.period, ##check FUN
                         makeReturns)
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata = highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if (makeReturns) 
    {
      rdata = makeReturns(rdata)
    }
  
  q=as.numeric(rdata)
  N = length(q)+1
  rQuar = N/3*sum(q^4)
  return(rQuar)
  }
}


rQPVar = function(rdata, align.by = NULL, align.period = NULL, makeReturns = FALSE,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  multixts =highfrequency::: .multixts(rdata)
  if (multixts) 
  {
    result = apply.daily(rdata, rQPVar, align.by, align.period,  ##check FUN
                         makeReturns)
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata =highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if (makeReturns) 
    {
      rdata = makeReturns(rdata)
    }
  
  q=as.numeric(rdata)
  q=abs(rollapply(q,width=4,FUN=prod,align="left"))
  N = length(q)+3
  rQPVar = N/(N-3)*pi^2/4*sum(q)
  return(rQPVar)
  }
}


rTPVar = function(rdata, align.by = NULL, align.period = NULL, makeReturns = FALSE,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  multixts = highfrequency:::.multixts(rdata)
  if (multixts) 
  {
    result = apply.daily(rdata, rTPVar, align.by, align.period, ##check FUN
                         makeReturns)
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata = highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if (makeReturns) 
    {
      rdata = makeReturns(rdata)
    }
  
  q=as.numeric(rdata)
  q=abs(rollapply(q,width = 3, FUN = prod, align = "left"))
  N = length(q)+2
  rTPVar= N/(N-2)*gamma(1/2)^2/(4*gamma(7/6)^2)*sum(q^(4/3))
  return(rTPVar)
  }
}


  
## Standard error and confidence band of RV measures
  ivInference = function(rdata, IVestimator="RV", IQestimator="rQuar", confidence=0.95, align.by= NULL, align.period = NULL, makeReturns = FALSE, ...)
  {
    if (hasArg(data)) 
    {
      rdata = data
    }
    multixts =highfrequency:::.multixts(rdata)
    if (multixts) 
    {
      result = apply.daily(rdata, ivInference, align.by, align.period, ##check FUN
                           makeReturns)
      return(result)
    }
    if (!multixts) 
    {
      if ((!is.null(align.by)) && (!is.null(align.period))) {
        rdata =highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
      }
      
      if(makeReturns)
      {
        rdata=makeReturns(rdata)
      }
      
      N=length(rdata)
      p= as.numeric(confidence)
      
      ##IQ estimator: 
      IQ=function(rdata,IQestimator)
      {
        switch(IQestimator,
               RQuart= rQuar(rdata),
               QP= QP(rdata),
               minRQ= minRQ(rdata),
               medRQ= medRQ(rdata))
      }
      iq= IQ(rdata,IQestimator)
      
      ##IV estimator: 
      IV=function(IVestimator,iq)
      {
        switch(IVestimator,
               RV= sqrt(2*iq),
               BV= sqrt(2.61*iq),
               TV= sqrt(3.06*iq),
               minRV= sqrt(3.81*iq),
               medRV= sqrt(2.96*iq))
      }
      iv= IV(IVestimator,iq)
      
      ##hatIV
      hativ=function(rdata,IVestimator)
      {
        switch(IVestimator,
               RV= highfrequency:::RV(rdata),
               BV= highfrequency:::RBPVar(rdata),
               TV= TP(rdata),
               minRV= minRV(rdata),
               medRV= medRV(rdata))
      }
      
      hatIV=hativ(rdata, IVestimator)
      
      stderr= 1/sqrt(N)*iv
      
      ##confidence band
      lowband=as.numeric(hatIV-stderr*qnorm(p))
      highband=as.numeric(hatIV+stderr*qnorm(p))
      cb<-c(lowband,highband)
      
      ## reports: 
      out={}
      out$hativ= hatIV
      out$se= stderr
      out$cb= cb
      
      
      return(out)
    }
  }
  




# thetaROWVar(k=qchisq(0.95,df=1),alpha=0.25); thetaROWVar(k=qchisq(0.99,df=1),alpha=0.25); 

# thetaROWVar(k=qchisq(0.999,df=1),alpha=0.25); 



thetaROWVar = function( alpha = 0.001 , alphaMCD = 0.5 )
  
{
  
  IF_MCD = function( x , alpha = alphaMCD ){
    
    N = 1
    
    q = qchisq( 1-alpha , df = N )
    
    calpha = (1-alpha)/pchisq( q , df = N+2 )
    
    out = ( (x^2-q)/(1-alpha) )*( abs(x) <= sqrt(q) ) 
    
    return( -1+q*calpha + calpha*out ) 
    
  }
  
  
  
  int = function(x){
    
    return( IF_MCD(x)*x^2*dnorm(x) )
    
  }
  
  
  
  int = function(x){
    
    return( IF_MCD(x)^2*dnorm(x) )
    
  }
  
  
  
  avar_MCD = function(alpha){
     N = 1
    
    q_alpha = qchisq( 1-alpha , df = N )
    
    c_alpha = (1-alpha)/pchisq( q_alpha , df = N+2 )
    
    a_alpha = -2*sqrt(q_alpha)*dnorm(sqrt(q_alpha))+1-alpha
    
    b_alpha = -2*q_alpha^(3/2)*dnorm(sqrt(q_alpha))+3*a_alpha
    
    
    
    avar = c_alpha^2*q_alpha^2+1-2*c_alpha*q_alpha
    
    avar = avar + c_alpha^2/(1-alpha)^2*(b_alpha+q_alpha^2*(1-alpha)-2*q_alpha*a_alpha)
    
    avar = avar + 2*( c_alpha*q_alpha - 1)*c_alpha*(1/(1-alpha))*(-q_alpha*(1-alpha)+a_alpha) 
    
    return(avar)
    
  }
  
  N = 1
  
  q_alpha = qchisq( 1-alpha , df = N )
  
  c_alpha = (1-alpha)/pchisq( q_alpha , df = N+2 )
  
  a_alpha = -2*sqrt(q_alpha)*dnorm(sqrt(q_alpha))+1-alpha
  
  b_alpha = -2*q_alpha^(3/2)*dnorm(sqrt(q_alpha))+3*a_alpha
  
  
  
  halfk = sqrt(k); halfq = sqrt(q_alpha) 
  
  
  
  Ewu2   = 2*pnorm(halfk)-1;
  
  Ewu2u2 = -2*halfk*dnorm(halfk)+Ewu2;
  
  Ewu2u4 = -2*(k^(3/2))*dnorm(halfk)+3*Ewu2u2;
  
  
  
  Ewu2u2IF = (-1+c_alpha*q_alpha-(c_alpha*q_alpha)/(1-alpha))*a_alpha+c_alpha*b_alpha/(1-alpha)
  
  Ewu2u2IF = Ewu2u2IF + 2*(1-c_alpha*q_alpha)*(
    
    halfk*dnorm(halfk)-halfq*dnorm(halfq) + 1 - alpha/2 - pnorm(halfk)   )
  
  Ewu2IF = (alpha-1-c_alpha*q_alpha*alpha) + c_alpha*a_alpha/(1-alpha) + 2*(c_alpha*q_alpha-1)*( pnorm(halfk)-(1-alpha/2))
  
  Ederwu2u4 = -k^(3/2)*dnorm(halfk);
  
  Ederwu2u2 = -halfk*dnorm(halfk);
  
  c1 = 1/Ewu2u2;   c2 = 1/Ewu2;   c3 = c2*Ederwu2u2-c1*Ederwu2u4
  
  Avar0 = avar_MCD(alpha)
  
  theta = c3^2*Avar0 + c1^2*Ewu2u4 + c2^2*Ewu2 - 2*c1*c2*Ewu2u2;
  
  theta = theta + 2*c3*( c1*Ewu2u2IF-c2*Ewu2IF );
  
  return( theta );
  
}

  
##Jump-test: BNS with threshold
BNSjumptest=function(rdata, IVestimator= "BV", IQestimator= "TP", type= "linear", logtransform= FALSE, max= FALSE, 
                     align.by= NULL, align.period= NULL, makeReturns = FALSE, startV= NULL,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  multixts = highfrequency:::.multixts(rdata)
  if (multixts) 
  {
    result = apply.daily(rdata, BNSjumptest, align.by, align.period, makeReturns) ##Check FUN
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata = highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if(makeReturns)
    {
      rdata = makeReturns(rdata)
    }
    
    N=length(rdata)
    
    ## hatQV
    hatQV = highfrequency:::RV(rdata)
    
    
    ## threshold BV
    ##Gaussian kernel:   
    Gaus.ker= function(y)
    {
      ky=(1/sqrt(2*pi)*exp(-y^2/2))
    }
    
    ##hatV:
    if(is.null(startV))
    {
      hatV= medRV(rdata)
    }
    else(hatV=startV)
    
    ##zgamma function: 
    zgamma=function(x,y)
    {
      if(x^2<y)
      {
        out=abs(x)
      }
      else(out=1.094*sqrt(y))
      return(out)
    }
    
    ##corrected threshold bipower variation: 
    ctBV= function(rdata)
    {
      q=as.numeric(rdata)
      
      v=3^2*hatV
      z1= zgamma(rdata[2:N],v)  ##check formula
      z2= zgamma(rdata[1:(N-1),v]) ##check formula
      
      ctbv= (pi/2)*sum(z1*z2)
      
      return(ctbv)
    }
    
    ##hatIV
    hativ=function(rdata,IVestimator)
    {
      switch(IVestimator,
             BV= highfrequency:::RBPVar(rdata),
             minRV=minRV(rdata),
             medRV=medRV(rdata),
             ROWvar = rOWCov(rdata,alphaMCD=alphaMCD,alpha=alpha),
             CTBV=ctBV(rdata))
    }
    hatIV=hativ(rdata, IVestimator)
    
    ##theta
    tt=function(IVestimator)
    {
      switch(IVestimator,
             BV= 2.61,
             minRV= 3.81,
             medRV= 2.96,
             ROWVar = thetaROWVar(alpha,alphaMCD))
    }
    theta=tt(IVestimator)    
    
    ##hatIQ
    hatiq=function(rdata,IQestimator)
    {
      switch(IQestimator,
             TP= rTPVar(rdata),
             QP= rQPVar(rdata),
             minRQ= minRQ(rdata),
             medRQ= medRQ(rdata))
    }
    hatIQ=hatiq(rdata, IQestimator)
    
    
    ## linear or ratio
    if(type=="linear")
    {
      ##logtransform
      if(logtransform)
      {
        hatQV= log(highfrequency:::RV(rdata))
        hatIV=log(hativ(rdata,IVestimator))
      }
      if(!logtransform)
      {
        hatQV= highfrequency:::RV(rdata)
        hatIV= hativ(rdata,IVestimator)
      }
      
      ## max argument
      if(max)
      {
        product= max(1,hatiq(rdata,IQestimator)/hativ(rdata,IVestimator)^2)
      }
      if(!max)
      {
        product= hatiq(rdata,IQestimator)
      }
      a=sqrt(N)*(hatQV-hatIV)/sqrt((theta-2)*product)
      out={}
      out$ztest=a
      out$critical.value= qnorm(c(0.025,0.975))
      out$pvalue= 2*pnorm(-abs(a))
      return(out)
    }   
    
    if(type=="ratio")
    {
      ## max argument
      if(max)
      {
        product= max(1,hatiq(rdata,IQestimator)/hativ(rdata,IVestimator)^2)
      }
      if(!max)
      {
        product= hatiq(rdata,IQestimator)/hativ(rdata,IVestimator)^2
      }
      a=sqrt(N)*(1-hativ(rdata,IVestimator)/highfrequency:::RV(rdata))/sqrt((theta-2)*product)
      out={}
      out$ztest=a
      out$critical.value= qnorm(c(0.025,0.975))
      out$pvalue= 2*pnorm(-abs(a))
      return(out)
    }       
  }
}


##JOjumptest
  JOjumptest= function(pdata, power=4,...)
{
    simre=function (pdata) 
    {
      l = dim(pdata)[1]
      x = matrix(as.numeric(pdata), nrow = l)
      x[(2:l), ] = x[(2:l), ]/x[(1:(l - 1)), ]-1
      x[1, ] = rep(0, dim(pdata)[2])
      x = xts(x, order.by = index(pdata))
    }
    R=simre(pdata) 
    r= makeReturns(pdata)  
    N=length(pdata)-1
    bv= highfrequency:::RBPVar(r)
    rv= highfrequency:::RV(r)
    
    SwV=2*sum(R-r)
    mu1=2^(6/2)*gamma(1/2*(6+1))/gamma(1/2)
    
  ##mupower:
    if(power==4)
    {
      q=abs(rollapply(r, width = 4, FUN = prod, align = "left"))
      mu2= 2^((6/4)/2)*gamma(1/2*(6/4+1))/gamma(1/2)
      av=mu1/9 * N^3*(mu2)^(-4)/(N-4-1)*sum(q^(6/4),na.rm= TRUE)   ##check formula
      JOtest= N*bv/sqrt(av)*(1- rv/SwV)
      
      out={}
      out$ztest= JOtest
      out$critical.value= qnorm(c(0.025,0.975))
      out$pvalue= 2*pnorm(-abs(JOtest))
      return(out)
    }     
    if(power==6)
    {
      q=abs(rollapply(r, width = 6, FUN = prod, align = "left"))
      mu2= 2^((6/6)/2)*gamma(1/2*(6/6+1))/gamma(1/2)
      av=mu1/9 * N^3*(mu2)^(-6)/(N-6-1)*sum(q^(6/6),na.rm= TRUE)   ##check formula
      JOtest= N*bv/sqrt(av)*(1- rv/SwV)
      
      out={}
      out$ztest= JOtest
      out$critical.value= qnorm(c(0.025,0.975))
      out$pvalue= 2*pnorm(-abs(JOtest))
      return(out)
    }     
}  


  
## AJjumptest:
AJjumptest= function(pdata, p=4 , k=2, align.by= NULL, align.period = NULL, makeReturns= FALSE, ...)
{
  if (hasArg(data)) 
  {
    pdata = data
  }
  multixts = highfrequency:::.multixts(pdata)
  if (multixts) 
  {
    result = apply.daily(pdata, AJjumptest, align.by, align.period, makeReturns) ##Check FUN
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      pdata = highfrequency:::.aggregatets(pdata, on = align.by, k = align.period)
    }
    
  multixts = highfrequency:::.multixts(pdata)
  if (multixts) 
  {
    result = apply.daily(pdata, AJjumptest, align.by, align.period, makeReturns) ##Check FUN
    return(result)
  }
  if (!multixts) 
  {
    pdata = highfrequency:::.aggregatets(pdata, on = "seconds", k = 1)
  }
    
    N=length(pdata)-1
    p= as.numeric(p)
    k= as.numeric(k)
    alpha= (1-1/p)/2 ## discuss this value
    w= 0.47
    cvalue= alpha*(1/N)^w
  
  ## scale
    scale = function(align.by)
    {
      switch(align.by,
             "seconds"= as.numeric(1),
             "minutes"= as.numeric(60),
             "hours"= as.numeric(3600))
    }
    
    h= align.period * scale(align.by)
    hk= h*k
    
    seq1= seq(1, N, h)
    seq2= seq(1, N, hk)
    
  # return data
    pdata1= pdata[seq1]
    pdata2= pdata[seq2]
    
    r= abs(makeReturns(pdata))
    r1= abs(makeReturns(pdata1))
    r2= abs(makeReturns(pdata2))
   
    pv1=sum(r1^p)
    pv2=sum(r2^p)
    
    S=pv1/pv2
  
  ## selection return:
    selection<- abs(r)<cvalue
    rse= abs(makeReturns(pdata[selection]))
  
  ##mupk
  fmupk = function(p,k){
    mupk = NULL;
    if(p==2){
      mupk = switch(as.character(k),
             "2" = 4.00,
             "3" = 5.00,
             "4" = 6.00)
    }
    if(p==3){
      mupk = switch(as.character(k),
               "2" = 24.07,
               "3" = 33.63,
               "4" = 43.74)
    }
    if(p==4){
      mupk = switch(as.character(k),
               "2" = 204.04,
               "3" = 320.26,
               "4" = 455.67)
    }
    if(is.null(mupk)){
      # reduce simulation error by taking large T and large nrep
      vmupk = rep(NA,times= 100)
      for( i in 1:nrep){
        print(i)
        vmupk[i] = fmupk(p,k)  
      }
      mupk = round(mean(vmupk),2)
    
    }
    return(mupk)
  }
  
  Npk = function(p,k){
    mup= 2^(p/2)*gamma(1/2*(p+1))/gamma(1/2)
    mu2p= 2^((2*p)/2)*gamma(1/2*((2*p)+1))/gamma(1/2)
      
    npk= (1/mup^2)*(k^(p-2)*(1+k))*mu2p + k^(p-2)*(k-1)*mup^2-2*k^(p/2-1)*fmupk(p,k)
    return(npk)
    }
  V = function(rse,p,k){
    mup= 2^(p/2)*gamma(1/2*(p+1))/gamma(1/2)
    muhalfp= 2^(p/4)*gamma(1/2*(p/2+1))/gamma(1/2)
    A2p= (1/N)^(1-p/2)/mup*sum(rse^p)
    Ap= (1/N)^(1-p/4)/muhalfp*sum(rse^(p/2))   ##check formula  
    
    V= Npk(p,k) *A2p/(N*Ap) ##check formula: A(p), A(2p)
    return(V)
    } 
  
  ## AJ test: 
    AJtest= (S-k^(p/2-1))/sqrt(V(rse,p,k))
    
    out={}
    out$ztest= AJtest
    out$critical.value= qnorm(c(0.025,0.975))
    out$pvalue= 2*pnorm(-abs(AJtest))
    return(out)  
  }
}    

##Realized semivariance
rSV= function(rdata, align.by = NULL, align.period = NULL, makeReturns = FALSE,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  multixts =highfrequency::: .multixts(rdata)
  if (multixts) 
  {
    result = apply.daily(rdata, rSV, align.by, align.period,  ##check FUN
                         makeReturns)
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata =highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if (makeReturns) 
    {
      rdata = makeReturns(rdata)
    }
    
    q=as.numeric(rdata)
    select.down <-rdata <0
    select.up <- rdata >0
    
    rSVd= sum(q[select.down]^2)
    rSVu = sum(q[select.up]^2)
    
    out={}
    out$rSVdownside = rSVd
    out$rSVupside = rSVu
    
    return(out)
        
  }
}

##Realized skewness
rSkew= function(rdata, align.by = NULL, align.period = NULL, makeReturns = FALSE,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  multixts =highfrequency::: .multixts(rdata)
  if (multixts) 
  {
    result = apply.daily(rdata, rSkew, align.by, align.period,  ##check FUN
                         makeReturns)
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata =highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if (makeReturns) 
    {
      rdata = makeReturns(rdata)
    }
    
    q=as.numeric(rdata)
    N= length(q)
    
    rv= highfrequency:::RV(rdata)
    
    rSkew= sqrt(N)*sum(q^3)/rv^(3/2)
    
    return(rSkew)
    
  }
}

##Realized kurtosis
rKurt= function(rdata, align.by = NULL, align.period = NULL, makeReturns = FALSE,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  multixts =highfrequency::: .multixts(rdata)
  if (multixts) 
  {
    result = apply.daily(rdata, rKurt, align.by, align.period,  ##check FUN
                         makeReturns)
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata =highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if (makeReturns) 
    {
      rdata = makeReturns(rdata)
    }
    
    q=as.numeric(rdata)
    N= length(q)
    
    rv= highfrequency:::RV(rdata)
    
    rkurt= N*sum(q^4)/rv^(2)
    
    return(rkurt)
    
  }
}

##Realized Multipower Variation (MPV)
rMPV= function(rdata, m= 2, p=2, align.by= NULL, align.period= NULL, makeReturns= FALSE,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  multixts =highfrequency::: .multixts(rdata)
  if (multixts) 
  {
    result = apply.daily(rdata, rMPV, align.by, align.period, makeReturns)
    return(result)
  }
  if (!multixts) 
  {
    if ((!is.null(align.by)) && (!is.null(align.period))) {
      rdata =highfrequency:::.aggregatets(rdata, on = align.by, k = align.period)
    }
    if (makeReturns) 
    {
      rdata = makeReturns(rdata)
    }
    
    
    if(m>p/2)
    { m= as.numeric(m) ##m> p/2
      p= as.numeric(p)
      q=as.numeric(rdata)
      q=abs(rollapply(q,width=m,FUN=prod,align="left"))
      N = length(rdata)
      
      dmp= (2^((p/m)/2)*gamma((p/m+1)/2)/gamma(1/2))^(-m)
      
      rmpv = dmp* N^(p/2)/(N-m+1)*sum(q^(p/m))
      return(rmpv)
    }
    else{warning("Please supply m>p/2 for the arguments m and p")}
    
  }
}  




##Preaveraging estimators (matrix)
  ##Preaverage return: 
hatreturn= function(pdata,kn)
{
  rdata=makeReturns(pdata)
  kn=as.numeric(kn)
  if(kn==1){ hatre = rdata}
  else{
    x = (1:(kn-1) )/kn
    x[x > (1-x)] = (1-x)[x > (1-x)]   
    weightedsum = function(series){ return( sum(x*series) )}
    hatre= rollapply(rdata,width = kn-1, FUN = weightedsum, align = "left")   
    hatre[is.na(hatre)] = rdata[is.na(hatre)]
  }  
  return(hatre)  
}
  ##gfunction:
gfunction = function(x){
  # returns the minimum of x and 1-x
  # whenevr x > 1-x , replace with 1-x
  x[x > (1-x)] = (1-x)[x > (1-x)] 
  return(x)
  
}

  #r#Univariate estimation:
crv=function(pdata)
{
  N= nrow(pdata)
  theta= 0.8 ##recommendation by Hautsch and Podolskij
  kn= floor(theta*sqrt(N))  
  
  ##psi:
  psi1= 1
  psi2= 1/12
  
  psi1kn= kn* sum((gfunction((1:kn)/kn) - gfunction(( (1:kn) - 1 )/kn ) )^2 )
  
  psi2kn= 1/kn*sum(gfunction((1:kn)/kn)^2) 

  r1= hatreturn(pdata,kn=kn)
  rdata = makeReturns(pdata)
  crv= 1/(sqrt(N)*theta*psi2kn)*sum(r1^2,na.rm=TRUE) - psi1kn*(1/N)/(2*theta^2*psi2kn)*sum(rdata^2,na.rm=TRUE)
  return(crv)
}

  ##preav_bi
preav_bi= function(pdata1, pdata2)
{
  x = refreshTime(list(pdata1, pdata2))
  newprice1 = x[, 1]
  newprice2 = x[, 2]  

  N= nrow(x)
  theta= 0.8 ##recommendation by Hautsch and Podolskij
  kn= floor(theta*sqrt(N))  
  
  ##psi:
  psi1= 1
  psi2= 1/12
  
  psi1kn= kn* sum((gfunction((1:kn)/kn) - gfunction(( (1:kn) - 1 )/kn ) )^2 )
  
  psi2kn= 1/kn*sum(gfunction((1:kn)/kn)^2)   
  
  
  r1 = hatreturn(newprice1,kn=kn)
  r2 = hatreturn(newprice2,kn=kn)
  
  mrc= N/(N-kn+2)*1/(psi2*kn)*(sum(r1*r2,na.rm=TRUE))
  
  return(mrc)
}


  ##Preaveraging
MRC= function(pdata, pairwise = FALSE , makePsd= FALSE,...)
{

  if (!is.list(pdata)) {
    n = 1
  }else {
    n = length(pdata)
  }
  if (n == 1) {
    multixts = highfrequency:::.multixts(pdata); 
    if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input"); }
     mrc = crv(pdata)
  }  
  
  
  if (n > 1) {
    multixts = highfrequency:::.multixts(pdata[[1]]); 
    if(multixts){ stop("This function does not support having an xts object of multiple days as input. Please provide a timeseries of one day as input"); }
    
    if(pairwise){
      cov = matrix(rep(0, n * n), ncol = n)
      diagonal = c()
      for (i in 1:n) {
        diagonal[i] = crv(pdata[[i]])
      }
      diag(cov) = diagonal
      
      for (i in 2:n) {
        for (j in 1:(i - 1)) {
          cov[i, j] = cov[j, i] = preav_bi(pdata[[i]], pdata[[j]])
        }
      }
      
      mrc = cov
      
      if(makePsd)
      {
        mrc=makePsd(mrc)
      }
      
    }else{
      x = refreshTime(pdata)
      N= nrow(x)
      theta= 0.8 ##recommendation by Hautsch and Podolskij
      kn= floor(theta*sqrt(N))  
      
      ##psi:
      psi1= 1
      psi2= 1/12
      
      psi1kn= kn* sum((gfunction((1:kn)/kn) - gfunction(( (1:kn) - 1 )/kn ) )^2 )
      psi2kn= 1/kn*sum(gfunction((1:kn)/kn)^2)   
      
      preavreturn = c()
      for( i in 1:ncol(x)){
        preavreturn = cbind( preavreturn , hatreturn(x[,i],kn) )
      }       
      
      S = rCov(preavreturn)
      
      mrc= N/(N-kn+2)*1/(psi2*kn)*S
      
      if(makePsd)
      {
        mrc=makePsd(mrc)
      }
          
    }
  }
  return(mrc) 
} 


##Realized beta:
rBeta= function(rdata, rindex, RCOVestimator= "rCov", RVestimator= "RV", makeReturns= FALSE,...)
{
  if (hasArg(data)) 
  {
    rdata = data
  }
  
  if (makeReturns) 
  {
    rdata = makeReturns(rdata)
    rindex= makeReturns(rindex)
  }
  
  multixts = highfrequency:::.multixts(rdata)
  
  if (multixts) 
  {
    print("No support for multiple days")
  }
  if (!multixts) 
  {
    if(RCOVestimator=="rRTSCov" | RCOVestimator=="rTSCov"){
       if( min(rdata) <0 ){
          print("when using rRTSCov, rTSCov, introduce price data - transformation to price data done")
          rdata = exp(cumsum(rdata))
       }
       if( min(rindex) <0 ){
         print("when using rRTSCov, rTSCov, introduce price data - transformation to price data done")
         rindex = exp(cumsum(rindex))
       }       
    }
    rcovfun= function(rdata, rindex, RCOVestimator)
    {
      switch(RCOVestimator,
             rCov= rCov(cbind(rdata,rindex) )[1,2],
             rAVGCov= rAVGCov(list(rdata, rindex) )[1,2],
             rBPCov= rBPCov(cbind(rdata, rindex) )[1,2],
             rHYCov= rHYCov(list(rdata, rindex) )[1,2],
             rKernelCov= rKernelCov(list(rdata, rindex) )[1,2],
             rOWCov= rOWCov(cbind(rdata, rindex) )[1,2],
             rRTSCov= rRTSCov(list(rdata, rindex))[1,2],
             rThresholdCov= rThresholdCov(cbind(rdata, rindex) )[1,2],
             rTSCov= rTSCov(list(rdata, rindex))[1,2]
             )
      
    }
    rcov= rcovfun(rdata,rindex,RCOVestimator)
    
    if( is.null(RVestimator) ){ RVestimator = RCOVestimator }  
    
    rvfun= function(rindex, RVestimator)
    {
    
      switch(RVestimator,
             RV= highfrequency:::RV(rindex),
             BV= highfrequency:::RBPVar(rindex),
             minRV= minRV(rindex ),
             medRV= medRV(rindex ),
             rCov= rCov(rindex ) ,
             rAVGCov= rAVGCov(rindex ) ,
             rBPCov= rBPCov(rindex ) ,
             rHYCov= rHYCov(rindex ) ,
             rKernelCov= rKernelCov(rindex ) ,
             rOWCov= rOWCov(rindex ) ,
             rRTSCov= rRTSCov(rindex) ,
             rThresholdCov= rThresholdCov(rindex ) ,
             rTSCov= rTSCov(rindex)
             )             
    
    }
    rv=rvfun(rindex,RVestimator)
    
    rbeta = rcov/rv
    return(rbeta)
  }
}
