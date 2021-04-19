# JUPYTER-DOCKER

> Entorno de trabajo de Jupyter Notebook con Python 3.8.

---

## Instalacion

### Requisitos

* Tener instalado **docker**
* *Opcional*: tener docker compose

### Instalacion con Docker-compose

1) Parado en la raiz del proyecto ejecutar el siguiente comando

    ```sh
    docker-compose up
    ```

2) Para **pararlo** ejecutar

    ```sh
    docker-compose down
    ```

### Instalacion solo con Docker

1) Parado en la raiz del proyecto ejecutar el siguiente script

    ```sh
    . rundocker.sh
    ```

    El script solo ejecuta un `docker build` y `un docker run` con varios parametros.

---

## Uso

* En cualquier navegador ir al link [localhos:8000](http://localhost:8000)

* En la primera vez pide **user** y **pass**, ingresar los deseados para que se guarde, en los proximos logueos se tendra que usar los ingresados en esta primera vez

* Dentro de la carpeta `./volumes/jupyterhub/` esta todo lo que se comparte con el contenedor, para trabajar hay que mover los archivos dentro de esa carpeta.

* Para ejecutar una linea usar Ctrl+Enter y para ejecutar una linea y crear una debajo utilizar Shift+Enter.

* Para borrar una linea usar pararse sobre esta, pulsar Esc y por ultimo 2 veces la tecla D.
