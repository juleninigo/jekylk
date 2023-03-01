# javibai_site

## Prod
### Construir en `output`
```
docker run --rm --volume="%CD%\www:/srv/jekyll" --volume="%CD%\output:/tmp/output" -it jekyll/jekyll sh -c "jekyll build --destination /tmp/output"
```

## Dev
### Construir y lanzar server en segundo plano:
```
docker run --rm --name javibai --volume="%CD%\www:/srv/jekyll" -p 4000:4000 -d jekyll/jekyll sh -c "jekyll build && jekyll serve --watch --drafts"
```

### Actualizar cambios en el servidor:
```
docker exec -it javibai sh -c "jekyll build"
```

### Parar servidor:
```
docker stop javibai
```
