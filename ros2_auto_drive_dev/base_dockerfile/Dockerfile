FROM n622jwith/ros2_basic_base:latest

# gui tools
RUN apt-get update && \
    apt-get install -y libqt5gui5 && \
    rm -rf /var/lib/apt/lists/*

# install rqt
RUN apt-get update &&\
    apt-get install -y ros-humble-rqt-* &&\
    rm -rf /var/lib/apt/lists/*

# install gazebo
RUN apt-get update &&\
    apt-get install -y lsb-release wget gnupg &&\
    wget https://packages.osrfoundation.org/gazebo.gpg -O /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg &&\
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null &&\
    apt-get update &&\
    apt-get install -y ignition-fortress &&\
    rm -rf /var/lib/apt/lists/*

# install slamtoolbox
RUN apt-get update &&\
    apt-get install -y ros-humble-slam-toolbox &&\
    rm -rf /var/lib/apt/lists/*

# install nav2
RUN apt-get update &&\
    apt-get install -y ros-humble-navigation2 &&\
    apt-get install -y ros-humble-nav2-bringup &&\
    rm -rf /var/lib/apt/lists/*

# install addtitional pkg
RUN apt-get update &&\
    apt-get install -y ros-humble-xacro \
    pybind11-dev \
    xterm && \
    rm -rf /var/lib/apt/lists/*

# install matplotlibcpp17
COPY matplotlibcpp17.sh /tmp/matplotlibcpp17.sh
RUN bash /tmp/matplotlibcpp17.sh

# install ompl
RUN apt-get update &&\
    apt-get install -y libompl-dev ompl-demos &&\
    rm -rf /var/lib/apt/lists/*
