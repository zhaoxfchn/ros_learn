#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/zhaoxf/motion-plan/demo05_ws/src/arbotix_ros/arbotix_sensors"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/zhaoxf/motion-plan/demo05_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/zhaoxf/motion-plan/demo05_ws/install/lib/python2.7/dist-packages:/home/zhaoxf/motion-plan/demo05_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/zhaoxf/motion-plan/demo05_ws/build" \
    "/usr/bin/python2" \
    "/home/zhaoxf/motion-plan/demo05_ws/src/arbotix_ros/arbotix_sensors/setup.py" \
     \
    build --build-base "/home/zhaoxf/motion-plan/demo05_ws/build/arbotix_ros/arbotix_sensors" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/zhaoxf/motion-plan/demo05_ws/install" --install-scripts="/home/zhaoxf/motion-plan/demo05_ws/install/bin"
