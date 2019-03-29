FROM nfcore/base
LABEL authors="Carlos Guzman" \
      description="Docker image containing all requirements for nf-core/chip pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-chip-1.0dev/bin:$PATH
