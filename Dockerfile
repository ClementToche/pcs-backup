FROM alpine:edge

LABEL maintainer="ClementTOCHE"
LABEL version="1.0.0"
LABEL description="PCS Backup service"

# Entry script
COPY inputs/entry.sh /entry.sh
RUN chown root:root /entry.sh
RUN chmod 760 /entry.sh

ENTRYPOINT ["/entry.sh"]