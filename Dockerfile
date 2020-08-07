FROM mcr.microsoft.com/dotnet/core/sdk:3.1

WORKDIR /app
COPY . /app

ENV ASPNETCORE_URLS=http://+:5000
ENV ASPNETCORE_ENVIRONMENT=Development
ENV DOTNET_USE_POLLING_FILE_WATCHER=true

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

EXPOSE 5000

ENTRYPOINT ["dotnet", "watch", "run", "--no-restore", "--urls", "http://0.0.0.0:5000", "--verbosity", "minimal"]

# See: https://stackoverflow.com/a/51256147
