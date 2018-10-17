; Auto-generated. Do not edit!


(cl:in-package opencvtest-msg)


;//! \htmlinclude image.msg.html

(cl:defclass <image> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (ros_image
    :reader ros_image
    :initarg :ros_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass image (<image>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opencvtest-msg:<image> is deprecated: use opencvtest-msg:image instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencvtest-msg:data-val is deprecated.  Use opencvtest-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'ros_image-val :lambda-list '(m))
(cl:defmethod ros_image-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencvtest-msg:ros_image-val is deprecated.  Use opencvtest-msg:ros_image instead.")
  (ros_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image>) ostream)
  "Serializes a message object of type '<image>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ros_image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image>) istream)
  "Deserializes a message object of type '<image>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ros_image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image>)))
  "Returns string type for a message object of type '<image>"
  "opencvtest/image")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image)))
  "Returns string type for a message object of type 'image"
  "opencvtest/image")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image>)))
  "Returns md5sum for a message object of type '<image>"
  "c52d0b491ac982e395f7f606723c9815")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image)))
  "Returns md5sum for a message object of type 'image"
  "c52d0b491ac982e395f7f606723c9815")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image>)))
  "Returns full string definition for message of type '<image>"
  (cl:format cl:nil "string data~%sensor_msgs/Image ros_image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image)))
  "Returns full string definition for message of type 'image"
  (cl:format cl:nil "string data~%sensor_msgs/Image ros_image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ros_image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image>))
  "Converts a ROS message object to a list"
  (cl:list 'image
    (cl:cons ':data (data msg))
    (cl:cons ':ros_image (ros_image msg))
))
