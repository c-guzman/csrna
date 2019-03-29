From:nfcore/base
Bootstrap:docker

%labels
    MAINTAINER Carlos Guzman
    DESCRIPTION Singularity image containing all reqs for the c-guzman/csrna heinzlab pipeline
    VERSION 1.0dev

%environment
    PATH=/opt/conda/envs/nf-core-csrna-1.0dev/bin:$PATH
    export PATH

%files
    environment.yml /

%post
    /opt/conda/bin/conda env create -f /environment.yml
    /opt/conda/bin/conda clean -a
