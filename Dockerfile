FROM easypanel/easypanel


EXPOSE 3000:3000
EXPOSE 80:80
EXPOSE 443:443

CMD easypanel/easypanel setup
