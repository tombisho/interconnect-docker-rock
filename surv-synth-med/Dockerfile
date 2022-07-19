#
# Rock R Server Dockerfile with DataSHIELD
#
# https://github.com/obiba/docker-rock-demo
#

FROM datashield/rock-base:6.2-R4.2

ENV DSURVIVAL_VERSION v1.0.1
ENV DSYNTHETIC_VERSION 0.0.2
ENV DSMEDIATION_VERSION 0.0.2

ENV ROCK_LIB /var/lib/rock/R/library

# Install new R packages

# dsSurvival
RUN Rscript -e "remotes::install_github('neelsoumya/dsSurvival', ref = '$DSURVIVAL_VERSION', dependencies = TRUE, upgrade = FALSE, lib = '$ROCK_LIB')"

# dsSynthetic
RUN Rscript -e "remotes::install_github('tombisho/dsSynthetic', ref = '$DSYNTHETIC_VERSION', dependencies = TRUE, upgrade = FALSE, lib = '$ROCK_LIB')"

# dsMediation
RUN Rscript -e "remotes::install_github('datashield/dsMediation', ref = '$DSMEDIATION_VERSION', repos = c('https://cloud.r-project.org', 'https://cran.datashield.org'), upgrade = FALSE, lib = '$ROCK_LIB')"

RUN chown -R rock $ROCK_LIB
