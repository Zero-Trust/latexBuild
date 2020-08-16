FROM snoworld/swd-mklatex:latest

# COPY \
# entrypoint.sh \
# .latexmkrc \
# Makefile \
#   /
WORKDIR /github/workspace

COPY [".latexmkrc", "Makefile", "./"]
COPY ["entrypoint.sh", "/"]

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]


