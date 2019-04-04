FROM nfcore/base
LABEL authors="Carlos Guzman" \
      description="Docker image containing all requirements for c-guzman/csrna pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-csrna-1.0dev/bin:$PATH
