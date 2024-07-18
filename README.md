# HomeServicesAPI

HomeServicesAPI es una aplicación de API RESTful desarrollada en .NET 6 para proporcionar servicios a domicilio. Esta aplicación está contenerizada usando Docker y se puede probar utilizando Postman.

## Tabla de Contenidos

- [Instalación](#instalación)
- [Uso](#uso)
- [Pruebas](#pruebas)
- [Contribuir](#contribuir)
- [Licencia](#licencia)

## Instalación

Sigue estos pasos para configurar y ejecutar el proyecto en tu entorno local.

## Publicar la Aplicación

Publica tu aplicación en una carpeta:
```dotnet publish -c Release -o publish```

## Construir la Imagen Docker

Navega al directorio publish y construye la imagen Docker:
```docker build -t homeservices-api .```

## Ejecutar el Contenedor Docker

Ejecuta el contenedor Docker:
```docker run -d -p 8080:80 --name homeservices-api-container homeservices-api```

## Uso
Una vez que el contenedor esté en funcionamiento, puedes acceder a la API en http://localhost:8080.

## Endpoints Disponibles

GET /api/posts: Obtiene la lista de tareas.

POST /api/posts: Crea una nueva tarea.

PUT /api/posts/{id}: Actualiza una tarea existente.

DELETE /api/posts/{id}: Elimina una tarea.

## Pruebas

Puedes utilizar Postman para probar los endpoints de la API.

Probar Endpoint GET

Abre Postman y crea una nueva petición.

Selecciona GET como método HTTP.

Introduce la URL: http://localhost:8080/api/tasks

Haz clic en Send.

Verifica la respuesta.

Probar Endpoint POST

Abre Postman y crea una nueva petición.


Selecciona POST como método HTTP.

Introduce la URL: http://localhost:8080/api/posts

Ve a la pestaña Body, selecciona raw y luego JSON.

Introduce el siguiente JSON:
```
{
    "title": "Nueva Tarea",
    "description": "Descripción de la nueva tarea"
}
```

### Prerrequisitos

- [.NET 6 SDK](https://dotnet.microsoft.com/download/dotnet/6.0)
- [Docker](https://www.docker.com/products/docker-desktop)
- [Postman](https://www.postman.com/downloads/)

### Clonar el Repositorio

```sh
git clone https://github.com/tu-usuario/HomeServicesAPI.git
cd HomeServicesAPI
