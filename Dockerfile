### Build BUILD&TEST image ###
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

WORKDIR /app

# Copy complete source
COPY . ./

# Build
RUN dotnet restore ./concurrency.sln
RUN dotnet build ./concurrency.sln --configuration Release --no-restore

# Publish Solution (for test execution)
RUN dotnet publish ./concurrency.sln --configuration Release --no-build --output ./out

