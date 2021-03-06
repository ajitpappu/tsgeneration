% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ga_ts.R
\name{ga_ts}
\alias{ga_ts}
\title{A revised version of genetic algorithms (R package `GA`) to allow for time series
generation.}
\usage{
ga_ts(type = c("binary", "real-valued", "permutation"), fitness, ..., n,
  min, max, nBits, population = gaControl(type)$population,
  selection = gaControl(type)$selection,
  crossover = gaControl(type)$crossover,
  mutation = gaControl(type)$mutation, popSize = 50,
  pcrossover = 0.8, pmutation = 0.1, elitism = base::max(1,
  round(popSize * 0.05)), updatePop = FALSE, postFitness = NULL,
  maxiter = 100, run = maxiter, maxFitness = Inf, names = NULL,
  suggestions = NULL, optim = FALSE, optimArgs = list(method =
  "L-BFGS-B", poptim = 0.05, pressel = 0.5, control = list(fnscale = -1,
  maxit = 100)), keepBest = FALSE, parallel = FALSE, monitor = if
  (interactive()) {     if (shiny::is.RStudio())          gaMonitor    
  else FALSE } else {     FALSE }, seed = NULL)
}
\arguments{
\item{type}{the type of genetic algorithm to be run depending on the nature of decision
variables.}

\item{fitness}{the fitness function, any allowable R function which takes as input an
individual string representing a potential solution, and returns a numerical value
describing its ``fitness``}

\item{...}{additional arguments to be passed to the fitness function.}

\item{n}{Length of the time series to be generated.}

\item{min}{a vector of length equal to the decision variables providing the lower
bounds of the search space in case of real-valued or permutation encoded
optimizations.}

\item{max}{a vector of length equal to the decision variables providing the upper
bounds of the search space in case of real-valued or permutation encoded
optimizations.}

\item{nBits}{a value specifying the number of bits to be used in binary encoded
optimizations.}

\item{population}{an R function for randomly generating an initial population.}

\item{selection}{an R function performing selection, i.e. a function which generates a
new population of individuals from the current population probabilistically
according to individual fitness.}

\item{crossover}{an R function performing crossover, i.e. a function which forms
offsprings by combining part of the genetic information from their parents.}

\item{mutation}{an R function performing mutation, i.e. a function which randomly
alters the values of some genes in a parent chromosome.}

\item{popSize}{the population size.}

\item{pcrossover}{the probability of crossover between pairs of chromosomes.}

\item{pmutation}{the probability of mutation in a parent chromosome.}

\item{elitism}{the number of best fitness individuals to survive at each generation.}

\item{updatePop}{If set at TRUE the first attribute attached to the value returned by
the user-defined fitness function is used to update the population.}

\item{postFitness}{a user-defined function which, if provided, receives the current
ga-class object as input, performs post fitness-evaluation steps, then returns an
updated version of the object which is used to update the GA search.}

\item{maxiter}{the maximum number of iterations to run before the GA search is halted.}

\item{run}{the number of consecutive generations without any improvement in the best
fitness value before the GA is stopped.}

\item{maxFitness}{the upper bound on the fitness function after that the GA search is
interrupted.}

\item{names}{a vector of character strings providing the names of decision variables.}

\item{suggestions}{a matrix of solutions strings to be included in the initial
population.}

\item{optim}{a logical defaulting to FALSE determining whether or not a local search
using general-purpose optimisation algorithms should be used.}

\item{optimArgs}{a list controlling the local search algorithm.}

\item{keepBest}{a logical argument specifying if best solutions at each iteration
should be saved in a slot called bestSol.}

\item{parallel}{An optional argument which allows to specify if the Genetic Algorithm
should be run sequentially or in parallel.}

\item{monitor}{a logical or an R function which takes as input the current state of the
ga-class object and show the evolution of the search.}

\item{seed}{an integer value containing the random number generator state.}
}
\value{
An object of class `ga-class`.
}
\description{
A revised version of genetic algorithms (R package `GA`) to allow for time series
generation.
}
\examples{
# Not Run
}
