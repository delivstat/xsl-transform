FROM hikmat30ce/xslt-tester

COPY conf/application.conf /root/XSL-tester/conf/application.conf

WORKDIR /root/XSL-tester/

EXPOSE 9000

ENTRYPOINT ["sbt", "run"]