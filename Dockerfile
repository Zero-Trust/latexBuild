FROM snoworld/swd-mklatex:latest

# COPY \
# entrypoint.sh \
# .latexmkrc \
# Makefile \
#   /
COPY ["entrypoint.sh", ".latexmkrc", "Makefile", "/github/workspace"]


CMD ["echo", "${PWD}"]
RUN ["chmod", "+x", "./entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]
