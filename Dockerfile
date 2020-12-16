FROM alpine

#ARG SOURCE_BRANCH
#ARG SOURCE_COMMIT
#ARG COMMIT_MSG
#ARG VERSION

COPY AutowareArchitectureProposal /AutowareArchitectureProposal

#ENV SOURCE_BRANCH=${SOURCE_BRANCH}
#ENV SOURCE_COMMIT=${SOURCE_COMMIT}
#ENV COMMIT_MSG=${COMMIT_MSG}

#RUN echo ${SOURCE_COMMIT} > /AutowareArchitectureProposal/src/SRC_SHA
#RUN echo ${VERSION} > /AutowareArchitectureProposal/src/SRC_VER
