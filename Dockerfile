FROM snoworld/swd-mklatex:latest

# COPY \
# entrypoint.sh \
# .latexmkrc \
# Makefile \
#   /
COPY ["entrypoint.sh", ".latexmkrc", "Makefile", "/github/workspace/"]

RUN ["chmod", "+x", "./entrypoint.sh"]

ENTRYPOINT ["bash", "-c", "/github/workspace/","./entrypoint.sh"]


