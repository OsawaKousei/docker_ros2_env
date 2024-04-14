FROM ubuntu:22.04

# Upgrade OS
RUN apt-get update -q && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

# Timezone, Launguage設定
RUN apt update &&\
    apt install -y --no-install-recommends \
    locales \
    software-properties-common tzdata &&\
    locale-gen ja_JP ja_JP.UTF-8 &&\
    update-locale LC_ALL=ja_JP.UTF-8 LANG=ja_JP.UTF-8 &&\
    add-apt-repository universe

ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo

# ros2のインストール
RUN apt update &&\
    apt install -y curl gnupg2 lsb-release &&\
    curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null && \
    apt-get update -q && \
    apt-get install -y ros-humble-desktop \
    python3-argcomplete \
    python3-colcon-common-extensions \
    python3-rosdep python3-vcstool && \
    rosdep init && \
    rm -rf /var/lib/apt/lists/*
RUN rosdep update

# 補助的なパッケージのインストール
RUN apt update &&\
    apt-get install -y nano \
    iputils-ping \
    net-tools \
    git \
    sudo &&\
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
