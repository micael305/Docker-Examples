# FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

# WORKDIR /src
# COPY Dependencies.csproj .
# RUN dotnet restore
# COPY . .

# RUN dotnet build "Dependencies.csproj" -c Release -o /app/build
# RUN dotnet publish "Dependencies.csproj" -c Release -o /app/out

# FROM mcr.microsoft.com/dotnet/sdk:9.0
# WORKDIR /App
# COPY --from=build /app/out .
# ENTRYPOINT ["dotnet", "Dependencies.dll"]

FROM mcr.microsoft.com/dotnet/sdk:9.0-alpine AS build

WORKDIR /App
COPY Dependencies.csproj .
RUN dotnet restore
COPY . ./

RUN dotnet build "Dependencies.csproj" -c Release -o /app/build
RUN dotnet publish "Dependencies.csproj" -c Release -o /app/out

FROM mcr.microsoft.com/dotnet/sdk:9.0-alpine
WORKDIR /App
COPY --from=build /app/out .
ENTRYPOINT ["dotnet", "Dependencies.dll"]