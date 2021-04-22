#
# Rock R Server Dockerfile with DataSHIELD
#
# https://github.com/datashield/docker-rock
#

FROM obiba/rock:latest

LABEL OBiBa <dev@obiba.org>

# Additional system dependencies
#RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y ???

# Update R packages
#RUN Rscript -e "update.packages(ask = FALSE, repos = c('https://cloud.r-project.org'), instlib = '/usr/local/lib/R/site-library')"
# Install new R packages
RUN Rscript -e "install.packages(c('dsBase', 'resourcer'), repos = c('https://cloud.r-project.org', 'https://cran.datashield.org'), lib = c('/var/lib/rock/R/library'), dependencies = TRUE)"
RUN chown -R rock /var/lib/rock/R/library
