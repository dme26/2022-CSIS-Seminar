FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
	biber \
	latexmk \
	make \
	texlive-full \
	curl \
	&& rm -rf /var/lib/apt/lists/*