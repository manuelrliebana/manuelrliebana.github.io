# manuelrliebana.github.io

Mi web personal: quién soy, en qué estoy trabajando y mi CV.
Se publica con GitHub Pages en **https://manuelrliebana.github.io**.

## Cómo está hecha

- **HTML y CSS a mano**, sin frameworks. El único JavaScript (`assets/grafica.js`) es la gráfica del radioenlace, y la página funciona sin él.
- **Una página por proyecto** en `proyectos/` (y en `en/projects/` en inglés).
- **Dos idiomas** con páginas estáticas: español en `/` e inglés en `/en/`.
- **Modo oscuro** automático según el sistema (`prefers-color-scheme`).
- **Marca personal:** logotipo "liebana", favicon e imagen para compartir de mi paquete de marca. Bricolage Grotesque para los títulos, Inter para el texto y el ámbar (`#C98A2E` / `#E8A33D`) solo en el rombo y en detalles. Colores de Jamilena: verde de olivar y blanco de cal.

## El CV

El CV está en `cv/` y lo escribo en [Typst](https://typst.app). Un único `cv.typ` genera las dos versiones según el idioma que se le pase:

```sh
./cv/build.sh   # genera CV_ManuelLiebana_ES.pdf y CV_ManuelLiebana_EN.pdf
```

Las fuentes van incluidas en `cv/fonts/` para que el resultado sea igual en cualquier máquina.
Cada vez que cambia algo en `cv/`, una GitHub Action ([`.github/workflows/cv.yml`](.github/workflows/cv.yml)) lo compila para comprobar que no hay errores y deja los PDF como artefacto.

## Estructura

```
index.html          portada en español
proyectos/          páginas de cada proyecto en español
en/                 portada y proyectos en inglés
assets/             estilos, gráfica, logotipo, iconos, imagen para compartir y foto
cv/                 CV en Typst, fuentes y PDF generados
.github/workflows/  compilación del CV
```

## Ver en local

```sh
python3 -m http.server
# y abrir http://localhost:8000
```
