FROM snoworld/swd-mklatex:latest

# COPY \
# entrypoint.sh \
# .latexmkrc \
# Makefile \
#   /
COPY ./* /github/workspace/

RUN ["chmod", "+x", "/github/workspance/entrypoint.sh"]
ENTRYPOINT ["/github/workspance/entrypoint.sh"]
