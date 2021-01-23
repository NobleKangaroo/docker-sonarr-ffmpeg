FROM linuxserver/sonarr:preview
MAINTAINER noblekangaroo

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="Sonarr" \
    org.label-schema.description="Sonarr container with ffmpeg" \
    org.label-schema.url="http://github.com/NobleKangaroo/docker-sonarr-ffmpeg" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="http://github.com/NobleKangaroo/docker-sonarr-ffmpeg" \
    org.label-schema.vendor="NobleKangaroo" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

# Install packages
RUN \
    apt-get update && \
    apt-get -y install ffmpeg && \
    rm -rf /tmp/* /var/lib/apt

