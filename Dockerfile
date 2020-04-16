FROM alpine:3.11
ARG VERSION
ARG VCS_REF
ARG BUILD_DATE
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.version="$VERSION" \
      org.label-schema.maintainer="https://github.com/capybara1/" \
      org.label-schema.url="https://github.com/capybara1/Docker-Tig" \
      org.label-schema.name="tig" \
      org.label-schema.license="MIT" \
      org.label-schema.vcs-url="https://github.com/capybara1/Docker-Tig" \
      org.label-schema.vcs-ref="$VCS_REF" \
      org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.dockerfile="/Dockerfile"
RUN apk --no-cache --update add tig
WORKDIR /app
VOLUME /app
ENTRYPOINT ["tig"]
