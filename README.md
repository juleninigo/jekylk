# javibai_site

Construir y lanzar server en segundo plano:
```
docker run --rm --name javibai --volume="%CD%\www:/srv/jekyll" -p 4000:4000 -d jekyll/jekyll sh -c "jekyll build && jekyll serve --watch --drafts"
```

Actualizar cambios en el servidor:
```
docker exec -it javibai sh -c "jekyll build"
```

Parar servidor:
```
docker stop javibai
```
