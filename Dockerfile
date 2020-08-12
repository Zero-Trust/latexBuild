FROM snoworld/swd-mklatex:latest

COPY \
entrypoint.sh \
.latexmkrc \
Makefile \
  /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entypoint.sh"]
