FROM snoworld/swd-mklatex:latest

COPY \
entrypoint.sh \
.latexmkrc \
Makefile \
  /
RUN ["chmod", "+x", "/entypoint.sh"]
ENTRYPOINT ["/entypoint.sh"]
