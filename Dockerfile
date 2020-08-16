FROM snoworld/swd-mklatex:latest

# COPY \
# entrypoint.sh \
# .latexmkrc \
# Makefile \
#   /
WORKDIR /github/workspace

COPY ["entrypoint.sh", ".latexmkrc", "Makefile", "./"]

RUN ["chmod", "+x", "./entrypoint.sh"]

ENTRYPOINT ["./entrypoint.sh"]


