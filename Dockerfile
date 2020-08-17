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
COPY [".latexmkrc", "Makefile", "entrypoint.sh", "find_expand.sh", "/"]

# WORKDIR /github/workspace

RUN ["chmod", "+x", "/entrypoint.sh"]
RUN ["chmod", "+x", "/find_expand.sh"]

ENTRYPOINT ["/entrypoint.sh"]


