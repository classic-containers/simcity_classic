FROM classiccontainers/dosbox

# Retrieve game data from archive.org
ADD --chown=dosbox:dosbox https://archive.org/download/msdos_SimCity_Classic_1994/SimCity_Classic_1994.zip simcity.zip

# Extract game, remove original zip
RUN unzip simcity.zip && \
    rm simcity.zip

# Copy dosbox conf with SimCity autoexec
COPY --chown=dosbox:dosbox dosbox_simcity.conf dosbox_simcity.conf

# Add above dosbox conf to dosbox command line
CMD ["-conf", "dosbox_simcity.conf"]
