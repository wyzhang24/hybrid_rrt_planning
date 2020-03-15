; Auto-generated. Do not edit!


(cl:in-package dbw_mkz_msgs-msg)


;//! \htmlinclude FuelLevelReport.msg.html

(cl:defclass <FuelLevelReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fuel_level
    :reader fuel_level
    :initarg :fuel_level
    :type cl:float
    :initform 0.0)
   (battery_12v
    :reader battery_12v
    :initarg :battery_12v
    :type cl:float
    :initform 0.0)
   (battery_hev
    :reader battery_hev
    :initarg :battery_hev
    :type cl:float
    :initform 0.0)
   (odometer
    :reader odometer
    :initarg :odometer
    :type cl:float
    :initform 0.0))
)

(cl:defclass FuelLevelReport (<FuelLevelReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FuelLevelReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FuelLevelReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dbw_mkz_msgs-msg:<FuelLevelReport> is deprecated: use dbw_mkz_msgs-msg:FuelLevelReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FuelLevelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:header-val is deprecated.  Use dbw_mkz_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fuel_level-val :lambda-list '(m))
(cl:defmethod fuel_level-val ((m <FuelLevelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:fuel_level-val is deprecated.  Use dbw_mkz_msgs-msg:fuel_level instead.")
  (fuel_level m))

(cl:ensure-generic-function 'battery_12v-val :lambda-list '(m))
(cl:defmethod battery_12v-val ((m <FuelLevelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:battery_12v-val is deprecated.  Use dbw_mkz_msgs-msg:battery_12v instead.")
  (battery_12v m))

(cl:ensure-generic-function 'battery_hev-val :lambda-list '(m))
(cl:defmethod battery_hev-val ((m <FuelLevelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:battery_hev-val is deprecated.  Use dbw_mkz_msgs-msg:battery_hev instead.")
  (battery_hev m))

(cl:ensure-generic-function 'odometer-val :lambda-list '(m))
(cl:defmethod odometer-val ((m <FuelLevelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:odometer-val is deprecated.  Use dbw_mkz_msgs-msg:odometer instead.")
  (odometer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FuelLevelReport>) ostream)
  "Serializes a message object of type '<FuelLevelReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fuel_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_12v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_hev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FuelLevelReport>) istream)
  "Deserializes a message object of type '<FuelLevelReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fuel_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_12v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_hev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odometer) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FuelLevelReport>)))
  "Returns string type for a message object of type '<FuelLevelReport>"
  "dbw_mkz_msgs/FuelLevelReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FuelLevelReport)))
  "Returns string type for a message object of type 'FuelLevelReport"
  "dbw_mkz_msgs/FuelLevelReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FuelLevelReport>)))
  "Returns md5sum for a message object of type '<FuelLevelReport>"
  "f937217d0b14552d7365d7cdca64a7ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FuelLevelReport)))
  "Returns md5sum for a message object of type 'FuelLevelReport"
  "f937217d0b14552d7365d7cdca64a7ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FuelLevelReport>)))
  "Returns full string definition for message of type '<FuelLevelReport>"
  (cl:format cl:nil "Header header~%~%# Fuel level (%, 0 to 100)~%float32 fuel_level~%~%# 12V battery voltage~%float32 battery_12v~%~%# Hybrid battery voltage~%float32 battery_hev~%~%# Odometer (km, 0.1km resolution)~%float32 odometer~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FuelLevelReport)))
  "Returns full string definition for message of type 'FuelLevelReport"
  (cl:format cl:nil "Header header~%~%# Fuel level (%, 0 to 100)~%float32 fuel_level~%~%# 12V battery voltage~%float32 battery_12v~%~%# Hybrid battery voltage~%float32 battery_hev~%~%# Odometer (km, 0.1km resolution)~%float32 odometer~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FuelLevelReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FuelLevelReport>))
  "Converts a ROS message object to a list"
  (cl:list 'FuelLevelReport
    (cl:cons ':header (header msg))
    (cl:cons ':fuel_level (fuel_level msg))
    (cl:cons ':battery_12v (battery_12v msg))
    (cl:cons ':battery_hev (battery_hev msg))
    (cl:cons ':odometer (odometer msg))
))
