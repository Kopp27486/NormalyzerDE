% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generatePlots.R
\name{generatePlots}
\alias{generatePlots}
\title{Generates a number of visualizations for the performance measures calculated
for the normalized matrices. These contain both general measures and
direct comparisons for different normalization approaches.}
\usage{
generatePlots(nr, jobdir, plotRows = 3, plotCols = 4, writeAsPngs = FALSE)
}
\arguments{
\item{nr}{Normalyzer results object.}

\item{jobdir}{Path to output directory for run.}

\item{plotRows}{Number of plot rows.}

\item{plotCols}{Number of plot columns.}

\item{writeAsPngs}{Output the report as PNG-plots instead of a single PDF}
}
\value{
None
}
\description{
They include:
}
\details{
"Total intensity" 
Barplot showing the summed intensity in each sample for thelog2-transformed 
data

"Total missing" 
Barplot showing the number of missing values found in each sample for the 
log2-tranformed data

Log2-MDS plot: MDS plot where data is reduced to two dimensions allowing 
inspection of the main global changes in the data

PCV - Intragroup: Mean of intragroup CV of all replicate groups

PMAD - Intragroup: Mean of intragroup median absolute deviation across 
replicate groups

PEV - Intragroup: Mean of intragroup pooled estimate of variance across the 
replicate groups

Relative PCV, PMAD and PEV compared to log2: The results from PCV, PMAD
and PEV from all normalized data compared to the log2 data

Stable variables plot:
5% of least differentially expressed variables are identified by ANOVA
analysis of log2 transformed data. Thereafter, global CV of these variables
is estimated from different normalized datasets. A plot of global CV of the
stable variables from all datsets on the y-axis and PCV-compared to log2 on
the x-axis is generated.

CV vs Raw Intensity plots:
For the first replicate group in each of the normalized dataset, a plot of
PCV of each variable compared to the average intensity of the variable in
the replicate group is plotted.

MA plots:
Plotted using the plotMA function of the limma package. The first sample in
each dataset is plotted against the average of the replicate group that
sample belong to.

Scatterplots:
The first two samples from each dataset are plotted.

Q-Q plots:
QQ-plots are plotted for the first sample in each normalized dataset.

Boxplots:
Boxplots for all samples are plotted and colored according to the replicate
grouping.

Relative Log Expression (RLE) plots:
Relative log expression value plots. Ratio between the expression of the
variable and the median expression of this variable across all samples.
The samples should be aligned around zero. Any deviation would indicate
discrepancies in the data.

Density plots:
Density distributions for each sample using the density function. Can 
capture outliers (if single densities lies far from the others) and see
if there is batch effects in the dataset (if for instance there is two
clear collections of lines in the data).

MDS plots
Multidimensional scaling plot using the cmdscale() function from the stats
package. Is often able to show whether replicates group together, and
whether there are any clear outliers in the data.

MeanSDplots
Displays the standard deviation values against values ordered according
to mean. If no dependency on mean is present (as is desired) a flat red
line is shown.

Pearson and Spearman correlation
Mean of intragroup Pearson and Spearman correlation values for each method.

Dendograms
Generated using the hclust function. Data is centered and scaled prior to
analysis. Coloring of replicates is done using as.phylo from the ape package.

P-value histograms
Histogram plots of p-values after calculating an ANOVA between different
condition groups. If no effect is present in the data a flat distribution
is expected. If an effect is present a flat distribution is still expected,
but with a sharp peak close to zero. If other effects are present it might
indicate that the data doesn't support the assumptions of ANOVA, for
instance if there are batch effects present in the data.
}
\examples{
data(example_summarized_experiment)
normObj <- getVerifiedNormalyzerObject("job_name", example_summarized_experiment)
normResults <- normMethods(normObj)
normResultsWithEval <- analyzeNormalizations(normResults)
outputDir <- tempdir()
generatePlots(normResultsWithEval, outputDir)
}
