FROM centos:latest
MAINTAINER Eduardo Reimberg "eduardo.reimberg@gmail.com"
ENV UPDATED 04-07-2015
RUN rpm -Uvh http://yum.spacewalkproject.org/2.3/RHEL/7/x86_64/spacewalk-repo-2.3-4.el7.noarch.rpm \
  && rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install spacewalk-setup-postgresql
RUN mkdir -p /etc/postgresql/9.2/main
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.2/main/pg_hba.conf

# And add ``listen_addresses`` to ``/etc/postgresql/9.2/main/postgresql.conf``
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.2/main/postgresql.conf

# Expose the PostgreSQL port
EXPOSE 5432

USER postgres

# Add VOLUMEs to allow backup of config, logs and databases
# VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]

# Set the default command to run when starting the container
CMD ["/usr/bin/postgres", "-D", "/var/lib/postgresql/9.3/main", "-c", "config_file=/etc/postgresql/9.2/main/postgresql.conf"]

#ENTRYPOINT postgres
