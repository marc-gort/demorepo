FROM library/debian:10
LABEL MAINTAINER="kenneth@floss.cat"
RUN	apt-get update && apt-get -y install inetutils-ping && rm -rf /var/lib/apt /var/cache/apt

#	ENTRYPOINT + CMD <--- "/bin/sh -c" "/bin/bash"
#ENTRYPOINT [ "/bin/ping", "-c", "5" ]
#	Modificable desde "CMDLINE"
#CMD [ "8.8.8.8" ]
CMD [ "/bin/echo", "Hola" ]


#EXPOSE 9999
#EXPOSE 10000
#EXPOSE 10038
#COPY entrypoint.sh /
#ENTRYPOINT ["/entrypoint.sh"]
#ENV MIEMPRESA sum
#EXPOSE 99

#service apache2 start ----> apachectl -D FOREGROUNDº
#	Entrypoint de debian  = /bin/sh -c
#	CMD de debian /bin/bash
#	Por defecto, se lanza "ENTRYPOINT + CMD"
#	docker run [params] IMGNAME "CMD"
