FROM circleci/node:14-browsers

USER root

RUN npm i -g lighthouse

# some place we can mount and view lighthouse reports
RUN mkdir -p /lighthouse
WORKDIR /lighthouse
VOLUME /lighthouse

ENTRYPOINT ["/lighthouse/entrypoint.sh"]
