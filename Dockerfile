# Usa una imagen base del runtime de .NET 6
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

# Copia los archivos publicados desde la carpeta local al directorio de trabajo en el contenedor
COPY . .

# Define el punto de entrada para la aplicación
ENTRYPOINT ["dotnet", "HomeHero.Api.dll"]
