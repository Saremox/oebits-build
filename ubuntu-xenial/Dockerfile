FROM ubuntu:xenial
RUN apt-get update && \
    apt-get --no-install-recommends --yes install\
			  texlive-base\
			  texlive-lang-german\
			  texlive-latex-base\
			  texlive-latex-recommended\
                          texlive-latex-extra\
                          texlive-fonts-recommended\
		          texlive-fonts-extra\
			  cm-super\
			  python3-pip\
			  librsvg2-bin\
                          make\
			  wget\
                          locales\
			  ca-certificates && \
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    wget "https://github.com/jgm/pandoc/releases/download/2.2.1/pandoc-2.2.1-1-amd64.deb" -O pandoc.deb && \
    dpkg -i pandoc.deb && \
    rm pandoc.deb && \
    pip3 install svgwrite && \
    apt-get --yes purge\ 
	wget\
	ca-certificates\
	python3-pip&& \
    apt-get --yes clean && \
    apt-get --yes autoclean && \
    apt-get --yes autoremove && \
    rm -rf /var/log/* && \
    rm -rf /var/cache/* && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/doc/* && \
    rm -rf /usr/share/groff/* && \
    rm -rf /usr/share/info/* && \
    rm -rf /usr/share/linda/* && \
    rm -rf /usr/share/lintian/* && \
    rm -rf /usr/share/man/*
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
LABEL version="0.1"
