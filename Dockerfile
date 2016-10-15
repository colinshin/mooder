FROM grahamdumpleton/mod-wsgi-docker:python-3.5-onbuild

RUN apt-get install python-psycopg2

RUN chown $MOD_WSGI_USER:$MOD_WSGI_GROUP -R . && chmod +x .whiskey/action_hooks/deploy && chown $MOD_WSGI_USER:$MOD_WSGI_GROUP -R /data

VOLUME ["/data"]

USER $MOD_WSGI_USER:$MOD_WSGI_GROUP