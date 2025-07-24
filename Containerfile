from ghcr.io/astral-sh/uv:alpine
COPY app.py /deckrommsync/
COPY pyproject.toml /deckrommsync/
ADD templates /deckrommsync/templates
ADD classes /deckrommsync/classes
WORKDIR /deckrommsync
RUN uv sync
#ENTRYPOINT ["uv", "run", "app.py"]
