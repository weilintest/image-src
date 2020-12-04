# 源代码镜像

（这个工程可能被其他工程替代）

这个镜像克隆所有源码，拷贝至alpine镜像发布

使用AAP工程的分支与发行tag, 在AAP新增tag时发布

制作出基于amd64和arm64架构的镜像

* autocoreats/src-ros1:latest
* autocoreats/src-ros1:vx.x.x
* autocoreats/src-ros2:latest
* autocoreats/src-ros2:vx.x.x

在镜像中，需要环境变量:

**注意**：以下参数来源为AAP工程而不是本镜像制作工程

`镜像内`需要以下环境变量，参考 [Environment variables for building and testing](https://docs.docker.com/docker-hub/builds/advanced/#environment-variables-for-building-and-testing)
* `SOURCE_BRANCH`: the name of the branch or the tag that is currently being tested.
* `SOURCE_COMMIT`: the SHA1 hash of the commit being tested.
* `COMMIT_MSG`: the message from the commit being tested and built.
* `DOCKER_REPO`: the name of the Docker repository being built.
* `DOCKERFILE_PATH`: the dockerfile currently being built.
* `DOCKER_TAG`: the Docker repository tag being built.
* `IMAGE_NAME`: the name and tag of the Docker repository being built. (This variable is a combination of DOCKER_REPO:DOCKER_TAG.)

除了环境变量，src目录中创建以下文件,并写入对应内容:
* SRC_SHA:${SOURCE_COMMIT}
* SRC_VER:${IMAGE_NAME},**其中DOCKER_TAG需要具体版本号不能是latest**