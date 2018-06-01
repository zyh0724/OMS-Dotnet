FROM microsoft/dotnet
RUN mkdir /app/
RUN rm /var/lib/apt/lists/* -vf
RUN apt-get update -y && apt-get install -y libunwind8-dev
COPY ./omsordercenter/ /app/
WORKDIR /app
EXPOSE 20006
CMD ["dotnet","SCM.OMSOrderCenter.Service.dll"]
