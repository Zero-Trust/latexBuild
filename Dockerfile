# FROM snoworld/swd-mklatex:latest
FROM thomasweise/docker-texlive-full:latest

# COPY \
# entrypoint.sh \
# .latexmkrc \
# Makefile \
#   /

# COPY [".latexmkrc", "Makefile", "/github/workspace/"]
# COPY ["entrypoint.sh", "/"]

COPY [".latexmkrc", "Makefile", "entrypoint.sh", "/"]

# WORKDIR /github/workspace

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]


