# Use the Wine 9.0 stable docker image as base
FROM scottyhardy/docker-wine:stable-9.0

# Create a WINEPREFIX for the office365 installation
ENV WINEPREFIX=/home/wineuser/.wine/office_docker

# Copy the wine machine of office365 folder from the host system to the container
COPY office_docker $WINEPREFIX

# Set the working directory to Office365 executables
WORKDIR $WINEPREFIX/drive_c/Program\ Files/Microsoft\ Office/root/Office16

# Add alias for easier access to the office executables to .bashrc
RUN echo "alias word='wine winword.exe'" >> /root/.bashrc \
    && echo "alias excel='wine excel.exe'" >> /root/.bashrc \
    && echo "alias powerpoint='wine powerpnt.exe'" >> /root/.bashrc

# Entry point for the container
ENTRYPOINT ["/bin/bash"]

