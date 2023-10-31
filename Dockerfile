FROM continuumio/miniconda3:23.3.1-0


RUN conda install -q mamba -n base -c conda-forge
COPY environment.yml /
RUN mamba env create -q -f /environment.yml
# COPY docker-entrypoint.sh /

ENV PATH /opt/conda/envs/apcrcq-rnaseq-0.2/bin:$PATH

# ENTRYPOINT [ "/docker-entrypoint.sh" ]
