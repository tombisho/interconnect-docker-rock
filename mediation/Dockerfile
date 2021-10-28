#
# Rock R Server Dockerfile with DataSHIELD Exposome
#
# https://github.com/datashield/docker-rock-mediation
#

FROM datashield/rock-base:latest

ENV DSMEDIATION_VERSION 0.0.1

ENV ROCK_LIB /var/lib/rock/R/library

# Install new R packages
# dsExposome
RUN Rscript -e "remotes::install_github('datashield/dsMediation', ref = '$DSMEDIATION_VERSION', repos = c('https://cloud.r-project.org', 'https://cran.datashield.org'), upgrade = FALSE, lib = '$ROCK_LIB')"


RUN chown -R rock $ROCK_LIB
