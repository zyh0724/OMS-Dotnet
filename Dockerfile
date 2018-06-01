FROM microsoft/dotnet
RUN mkdir /app/
RUN rm /var/lib/apt/lists/* -vf
RUN apt-get update -y && apt-get install -y libunwind8-dev

