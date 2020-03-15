; Auto-generated. Do not edit!


(cl:in-package dbw_mkz_msgs-msg)


;//! \htmlinclude ThrottleInfoReport.msg.html

(cl:defclass <ThrottleInfoReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle_pc
    :reader throttle_pc
    :initarg :throttle_pc
    :type cl:float
    :initform 0.0)
   (throttle_rate
    :reader throttle_rate
    :initarg :throttle_rate
    :type cl:float
    :initform 0.0)
   (throttle_pedal_qf
    :reader throttle_pedal_qf
    :initarg :throttle_pedal_qf
    :type dbw_mkz_msgs-msg:QualityFactor
    :initform (cl:make-instance 'dbw_mkz_msgs-msg:QualityFactor))
   (engine_rpm
    :reader engine_rpm
    :initarg :engine_rpm
    :type cl:float
    :initform 0.0)
   (gear_num
    :reader gear_num
    :initarg :gear_num
    :type dbw_mkz_msgs-msg:GearNum
    :initform (cl:make-instance 'dbw_mkz_msgs-msg:GearNum)))
)

(cl:defclass ThrottleInfoReport (<ThrottleInfoReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleInfoReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleInfoReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dbw_mkz_msgs-msg:<ThrottleInfoReport> is deprecated: use dbw_mkz_msgs-msg:ThrottleInfoReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThrottleInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:header-val is deprecated.  Use dbw_mkz_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle_pc-val :lambda-list '(m))
(cl:defmethod throttle_pc-val ((m <ThrottleInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:throttle_pc-val is deprecated.  Use dbw_mkz_msgs-msg:throttle_pc instead.")
  (throttle_pc m))

(cl:ensure-generic-function 'throttle_rate-val :lambda-list '(m))
(cl:defmethod throttle_rate-val ((m <ThrottleInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:throttle_rate-val is deprecated.  Use dbw_mkz_msgs-msg:throttle_rate instead.")
  (throttle_rate m))

(cl:ensure-generic-function 'throttle_pedal_qf-val :lambda-list '(m))
(cl:defmethod throttle_pedal_qf-val ((m <ThrottleInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:throttle_pedal_qf-val is deprecated.  Use dbw_mkz_msgs-msg:throttle_pedal_qf instead.")
  (throttle_pedal_qf m))

(cl:ensure-generic-function 'engine_rpm-val :lambda-list '(m))
(cl:defmethod engine_rpm-val ((m <ThrottleInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:engine_rpm-val is deprecated.  Use dbw_mkz_msgs-msg:engine_rpm instead.")
  (engine_rpm m))

(cl:ensure-generic-function 'gear_num-val :lambda-list '(m))
(cl:defmethod gear_num-val ((m <ThrottleInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:gear_num-val is deprecated.  Use dbw_mkz_msgs-msg:gear_num instead.")
  (gear_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleInfoReport>) ostream)
  "Serializes a message object of type '<ThrottleInfoReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_pc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_pedal_qf) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'engine_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_num) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleInfoReport>) istream)
  "Deserializes a message object of type '<ThrottleInfoReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_pc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_rate) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_pedal_qf) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_rpm) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_num) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleInfoReport>)))
  "Returns string type for a message object of type '<ThrottleInfoReport>"
  "dbw_mkz_msgs/ThrottleInfoReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleInfoReport)))
  "Returns string type for a message object of type 'ThrottleInfoReport"
  "dbw_mkz_msgs/ThrottleInfoReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleInfoReport>)))
  "Returns md5sum for a message object of type '<ThrottleInfoReport>"
  "6ed272050114755a930a6cf633944b48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleInfoReport)))
  "Returns md5sum for a message object of type 'ThrottleInfoReport"
  "6ed272050114755a930a6cf633944b48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleInfoReport>)))
  "Returns full string definition for message of type '<ThrottleInfoReport>"
  (cl:format cl:nil "Header header~%~%# Throttle Pedal~%float32 throttle_pc   # Throttle pedal percent, range 0 to 1~%float32 throttle_rate # Throttle pedal change per second (1/s)~%QualityFactor throttle_pedal_qf # Non-zero is limp-home~%~%# Engine~%float32 engine_rpm    # Engine Speed (rpm)~%~%# Gear Num~%GearNum gear_num      # Gear Number~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dbw_mkz_msgs/QualityFactor~%uint8 value~%~%uint8 OK=0~%uint8 EMPTY=1~%uint8 CORRUPT=2~%uint8 FAULT=3~%~%================================================================================~%MSG: dbw_mkz_msgs/GearNum~%uint8 num~%~%uint8 NONE=0~%uint8 DRIVE_D01=1~%uint8 DRIVE_D02=2~%uint8 DRIVE_D03=3~%uint8 DRIVE_D04=4~%uint8 DRIVE_D05=5~%uint8 DRIVE_D06=6~%uint8 DRIVE_D07=7~%uint8 DRIVE_D08=8~%uint8 DRIVE_D09=9~%uint8 DRIVE_D10=10~%uint8 NEUTRAL=16~%uint8 REVERSE_R01=17~%uint8 REVERSE_R02=18~%uint8 PARK=31~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleInfoReport)))
  "Returns full string definition for message of type 'ThrottleInfoReport"
  (cl:format cl:nil "Header header~%~%# Throttle Pedal~%float32 throttle_pc   # Throttle pedal percent, range 0 to 1~%float32 throttle_rate # Throttle pedal change per second (1/s)~%QualityFactor throttle_pedal_qf # Non-zero is limp-home~%~%# Engine~%float32 engine_rpm    # Engine Speed (rpm)~%~%# Gear Num~%GearNum gear_num      # Gear Number~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dbw_mkz_msgs/QualityFactor~%uint8 value~%~%uint8 OK=0~%uint8 EMPTY=1~%uint8 CORRUPT=2~%uint8 FAULT=3~%~%================================================================================~%MSG: dbw_mkz_msgs/GearNum~%uint8 num~%~%uint8 NONE=0~%uint8 DRIVE_D01=1~%uint8 DRIVE_D02=2~%uint8 DRIVE_D03=3~%uint8 DRIVE_D04=4~%uint8 DRIVE_D05=5~%uint8 DRIVE_D06=6~%uint8 DRIVE_D07=7~%uint8 DRIVE_D08=8~%uint8 DRIVE_D09=9~%uint8 DRIVE_D10=10~%uint8 NEUTRAL=16~%uint8 REVERSE_R01=17~%uint8 REVERSE_R02=18~%uint8 PARK=31~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleInfoReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_pedal_qf))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_num))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleInfoReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleInfoReport
    (cl:cons ':header (header msg))
    (cl:cons ':throttle_pc (throttle_pc msg))
    (cl:cons ':throttle_rate (throttle_rate msg))
    (cl:cons ':throttle_pedal_qf (throttle_pedal_qf msg))
    (cl:cons ':engine_rpm (engine_rpm msg))
    (cl:cons ':gear_num (gear_num msg))
))
