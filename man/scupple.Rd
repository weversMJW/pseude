% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scupple.R
\name{scupple}
\alias{scupple}
\title{A wrapper around the four main functions}
\usage{
scupple(
  sc_counts,
  sc_table,
  sc_group = "sample_name",
  design = "state",
  comparison = "state,young,old",
  out_path = NULL,
  threads = 10,
  do_prefilter = TRUE,
  writeorret = TRUE
)
}
\arguments{
\item{sc_counts}{Table that contains the cell-level gene-counts}

\item{sc_table}{Look-up table that links cells to aggregation groups}

\item{sc_group}{String with column in agg_table that contains the grouping}

\item{design}{String used as formula in DE analysis (default = "state")}

\item{comparison}{A string in form 'condition,group A,group B'}

\item{out_path}{Which dir should house the output files}

\item{threads}{Number of workers used during DE analysis}

\item{do_prefilter}{Remove genes only expressed in a few samples}

\item{writeorret}{Binary choice, write to files or return object}
}
\value{
Optional: Returns DESeq2 data set with attached results and
information for visualization in a list
}
\description{
This function allows the user to run through the entire pipeline in one go.
The pipeline contains scagg, sciff, scout and scuality. This does reduces the
parameter-tuning; For specifics, please use the separate functions
}
\examples{
# Examples given with all optional parameters for education purposes
\dontrun{
# Write to files
scupple(
  sc_counts = raw_counts,
  sc_table = raw_table,
  sc_group = "sample_name",
  design = "state",
  comparison = "state,young,old",
  out_path = "/example/output/path",
  threads = 10,
  do_prefilter = TRUE,
  writeorret = TRUE
)
}
# Return object list
example_out <- scupple(
  sc_counts = raw_counts,
  sc_table = raw_table,
  sc_group = "sample_name",
  design = "state",
  comparison = "state,young,old",
  out_path = NULL,
  threads = 10,
  do_prefilter = TRUE,
  writeorret = FALSE
)
}
