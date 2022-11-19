FROM mcr.microsoft.com/powershell:7.2-ubuntu-20.04
LABEL maintainer="jw7777777"
#RUN apt-get -y update && apt-get -y upgrade && apt-get install -y sqlite3 libsqlite3-dev
#RUN sudo apt-get -y upgrade
#RUN sudo apt-get install -y sqlite3 libsqlite3-dev
#RUN mkdir -p /usr/src/app/
#RUN /usr/bin/sqlite3 /usr/src/app/dbatest.db

SHELL ["/usr/bin/pwsh", "-c"]

RUN Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
RUN Install-Module Pode -Force 
#RUN Install-Module dbatools -Force
#RUN Install-Module PSSQLite -Force 


# copy over the local files to the container
COPY . /usr/src/app/

# expose the port
EXPOSE 8080

# run the server
CMD [ "pwsh", "-c", "cd /usr/src/app; ./server.ps1" ]
