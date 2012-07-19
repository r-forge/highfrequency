\name{heavyModel}  
\Rdversion{1.1}
\alias{heavyModel}
\title{HEAVY Model estimation}

\description{This function calculatest the High frEquency bAsed VolatilitY
(HEAVY) model proposed in Shephard and Sheppard (2010).} 

\usage{
heavyModel(data, p=matrix( c(0,0,1,1),ncol=2 ), q=matrix( c(1,0,0,1),ncol=2 ), 
          startingvalues = NULL, LB = NULL, UB = NULL, 
            backcast = NULL, compconst = FALSE);
}

\arguments{ 
   \item{data}{ a (T x K) matrix containing the data, with T the number of days. For the traditional HEAVY model: K = 2, the first column contains the squared daily returns, the second column contains the realized measures.
   }
   \item{p}{ a (K x K) matrix containing the lag length for the model innovations. Position (i, j) in the matrix indicates the number of lags in equation i of the model for the innovations in data column j. For the traditional heavy model p is given by matrix( c(0,0,1,1),ncol=2 ) (default). 
   }
   \item{q}{ 
   a (K x K) matrix containing the lag length for the conditional variances. Position (i, j) in the matrix indicates the number of lags in equation i of the model for conditional variances corresponding to series j. For the traditionalheavy model introduced above q is given by matrix( c(1,0,0,1),ncol=2 ) (default).
   }
   \item{startingvalues}{ a vector containing the starting values to be used in the optimizat  ion to find the optimal parameters estimates.
   }
   \item{LB}{ a vector of length K indicating the lower bounds to be used in the esti-
mation. If NULL it is set to a vector of zeros by default.
   }
   \item{UB}{ a vector of length K indicating the upper bounds to be used in the
estimation. If NULL it is set to a vector of Inf by default.}
   \item{backcast}{ a vector of length K used to initialize the estimation. If NULL the
unconditional estimates are taken.
   }
   \item{compconst}{ a boolean variable. In case TRUE, the omega values are estimated in
the optimization. In case FALSE, volatility targeting is done and omega is just the
1 minus the sum of all relevant alpha's and beta's.
   }
}

\section{Details}{ 
See vignette.
}

\value{ 
A list with the following values:
(i) loglikelihood: The log likelihood evaluated at the parameter estimates.
(ii) likelihoods: a vector of length T containing the log likelihoods per day.
(iii) condvar: a (K x T) containing the conditional variances
(iv) estparams: a vector with the parameter estimates. The order in which the
parameters are reported is as follows: First the estimates for omega then the
estimates for the non-zero alpha's with the most recent lags first in case max(p) > 1,
then the estimates for the non-zero beta's with the most recent lag first in case
max(q) > 1.
}


\references{
Shephard, N. and K. Sheppard (2010). Realising the future: forecasting with high
frequency based volatility (heavy) models. Journal of Applied Econometrics 25,
197-231. 
}

\author{Jonathan Cornelissen and Kris Boudt}
\keyword{forecasting}
