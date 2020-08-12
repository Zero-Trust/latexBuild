FROM snoworld/swd-mklatex:latest

COPY \
entypoint.sh \
.latexmkrc \
Makefile \
main.tex \
  /
RUN ["chmod", "+x", "/entypoint.sh"]
ENTRYPOINT ["/entypoint.sh"]
