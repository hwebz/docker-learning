FROM mcr.microsoft.com/dotnet/core/sdk:3.1

WORKDIR /app
COPY ./bin/Debug/netcoreapp3.1/*.* /app/
EXPOSE 8085

ENTRYPOINT ["dotnet", "dotnet.dll"]