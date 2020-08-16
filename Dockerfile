FROM snoworld/swd-mklatex:latest

# COPY \
# entrypoint.sh \
# .latexmkrc \
# Makefile \
#   /
COPY [".latexmkrc", "Makefile", "/github/workspace/"]

COPY ["entrypoint.sh", "/"]

# WORKDIR /github/workspace

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]


