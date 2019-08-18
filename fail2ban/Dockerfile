FROM alpine:latest

RUN apk --update --no-cache add fail2ban
RUN rm /etc/fail2ban/jail.d/*.conf
COPY jail.local /etc/fail2ban/
COPY action.d/*.conf /etc/fail2ban/action.d/
COPY filter.d/*.conf /etc/fail2ban/filter.d/

ENTRYPOINT [ "fail2ban-client", "-f", "-x", "-v", "start"]
