!#/bin/bash

export CONTEXT="administracio-persones-rest"
export ENTORN="preproduccio"
export VERSIO="2.3.2"
export SNAPSHOT=""
export VERSIOTOMCAT="spring-base-logback-encoder-tomcat9"
export NOMCONTEXTCANVIAT=""
#COPY start.sh /home/tcuser/
chmod a+x /home/tcuser/start.sh
su tcuser -c "/home/tcuser/start.sh $ENTORN $CONTEXT $VERSIO $SNAPSHOT $NOMCONTEXTCANVIAT"
chown -R 2000:0 /home/tcuser
chmod -R g+rwx  /home/tcuser/


#EXPOSE 10180
#USER 2000
#CMD /usr/bin/sleep 100000
#CMD env; echo "Han de existir i tenir valor les variables: ENTORN,VERSIO,CONTEXT"; cd /home/tcuser; . /home/tcuser/server/$ENTORN/entorn.sh; /home/tcuser/server/tomcat/bin/catalina.sh run
exec env; echo "Han de existir i tenir valor les variables: ENTORN,VERSIO,CONTEXT"; cd /home/tcuser; . /home/tcuser/server/$ENTORN/entorn.sh; /home/tcuser/server/tomcat/bin/catalina.sh run
#CMD /bin/bash
