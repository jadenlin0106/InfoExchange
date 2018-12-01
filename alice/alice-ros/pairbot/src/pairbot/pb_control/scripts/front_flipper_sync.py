#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64
from control_msgs.msg import JointControllerState


# Left flipper is a mirror of right flipper, so angles of flippers are inversed (i,-i)
def callback_for_right_front_flipper(data):
    pub = rospy.Publisher('/pairbot/joint_left_front_flipper_controller/command', Float64, queue_size=10)
    pub.publish(data.set_point)

def callback_for_left_front_flipper(data):
    pub = rospy.Publisher('/pairbot/joint_right_front_flipper_controller/command', Float64, queue_size=10)
    pub.publish(data.set_point)

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("/pairbot/joint_right_front_flipper_controller/state", JointControllerState, callback_for_right_front_flipper)
    rospy.Subscriber("/pairbot/joint_left_front_flipper_controller/state", JointControllerState, callback_for_left_front_flipper)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    listener()
