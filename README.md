# manuelrliebana.github.io

Mi web personal: quién soy, en qué estoy trabajando y mi CV.
Se publica con GitHub Pages en **https://manuelrliebana.github.io**.

## Cómo está hecha

- **HTML y CSS a mano**, sin frameworks ni JavaScript. Es una página de contenido y no necesita más.
- **Dos idiomas** con páginas estáticas: español en `/` e inglés en `/en/`.
- **Modo oscuro** automático según el sistema (`prefers-color-scheme`).
- **Marca personal:** logotipo "liebana" (versión clara u oscura según el modo), favicon e imagen para compartir de mi paquete de marca. Bricolage Grotesque para los títulos, Inter para el texto y el ámbar (`#C98A2E` / `#E8A33D`) solo en el rombo y en detalles.

## El CV

El CV está en `cv/` y lo escribo en [Typst](https://typst.app). Un único `cv.typ` genera las dos versiones según el idioma que se le pase:

```sh
./cv/build.sh   # genera CV_ManuelLiebana_ES.pdf y CV_ManuelLiebana_EN.pdf
```

Las fuentes van incluidas en `cv/fonts/` para que el resultado sea igual en cualquier máquina.
Cada vez que cambia algo en `cv/`, una GitHub Action ([`.github/workflows/cv.yml`](.github/workflows/cv.yml)) lo compila para comprobar que no hay errores y deja los PDF como artefacto.

## Estructura

```
index.html          página en español
en/index.html       página en inglés
assets/             estilos, logotipo, iconos, imagen para compartir y foto
cv/                 CV en Typst, fuentes y PDF generados
.github/workflows/  compilación del CV
```

## Ver en local

```sh
python3 -m http.server
# y abrir http://localhost:8000
```
