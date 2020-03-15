; Auto-generated. Do not edit!


(cl:in-package dbw_mkz_msgs-msg)


;//! \htmlinclude DriverAssistReport.msg.html

(cl:defclass <DriverAssistReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (decel
    :reader decel
    :initarg :decel
    :type cl:float
    :initform 0.0)
   (decel_src
    :reader decel_src
    :initarg :decel_src
    :type cl:fixnum
    :initform 0)
   (fcw_enabled
    :reader fcw_enabled
    :initarg :fcw_enabled
    :type cl:boolean
    :initform cl:nil)
   (fcw_active
    :reader fcw_active
    :initarg :fcw_active
    :type cl:boolean
    :initform cl:nil)
   (aeb_enabled
    :reader aeb_enabled
    :initarg :aeb_enabled
    :type cl:boolean
    :initform cl:nil)
   (aeb_precharge
    :reader aeb_precharge
    :initarg :aeb_precharge
    :type cl:boolean
    :initform cl:nil)
   (aeb_braking
    :reader aeb_braking
    :initarg :aeb_braking
    :type cl:boolean
    :initform cl:nil)
   (acc_enabled
    :reader acc_enabled
    :initarg :acc_enabled
    :type cl:boolean
    :initform cl:nil)
   (acc_braking
    :reader acc_braking
    :initarg :acc_braking
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DriverAssistReport (<DriverAssistReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriverAssistReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriverAssistReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dbw_mkz_msgs-msg:<DriverAssistReport> is deprecated: use dbw_mkz_msgs-msg:DriverAssistReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:header-val is deprecated.  Use dbw_mkz_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'decel-val :lambda-list '(m))
(cl:defmethod decel-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:decel-val is deprecated.  Use dbw_mkz_msgs-msg:decel instead.")
  (decel m))

(cl:ensure-generic-function 'decel_src-val :lambda-list '(m))
(cl:defmethod decel_src-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:decel_src-val is deprecated.  Use dbw_mkz_msgs-msg:decel_src instead.")
  (decel_src m))

(cl:ensure-generic-function 'fcw_enabled-val :lambda-list '(m))
(cl:defmethod fcw_enabled-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:fcw_enabled-val is deprecated.  Use dbw_mkz_msgs-msg:fcw_enabled instead.")
  (fcw_enabled m))

(cl:ensure-generic-function 'fcw_active-val :lambda-list '(m))
(cl:defmethod fcw_active-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:fcw_active-val is deprecated.  Use dbw_mkz_msgs-msg:fcw_active instead.")
  (fcw_active m))

(cl:ensure-generic-function 'aeb_enabled-val :lambda-list '(m))
(cl:defmethod aeb_enabled-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:aeb_enabled-val is deprecated.  Use dbw_mkz_msgs-msg:aeb_enabled instead.")
  (aeb_enabled m))

(cl:ensure-generic-function 'aeb_precharge-val :lambda-list '(m))
(cl:defmethod aeb_precharge-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:aeb_precharge-val is deprecated.  Use dbw_mkz_msgs-msg:aeb_precharge instead.")
  (aeb_precharge m))

(cl:ensure-generic-function 'aeb_braking-val :lambda-list '(m))
(cl:defmethod aeb_braking-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:aeb_braking-val is deprecated.  Use dbw_mkz_msgs-msg:aeb_braking instead.")
  (aeb_braking m))

(cl:ensure-generic-function 'acc_enabled-val :lambda-list '(m))
(cl:defmethod acc_enabled-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:acc_enabled-val is deprecated.  Use dbw_mkz_msgs-msg:acc_enabled instead.")
  (acc_enabled m))

(cl:ensure-generic-function 'acc_braking-val :lambda-list '(m))
(cl:defmethod acc_braking-val ((m <DriverAssistReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:acc_braking-val is deprecated.  Use dbw_mkz_msgs-msg:acc_braking instead.")
  (acc_braking m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DriverAssistReport>)))
    "Constants for message type '<DriverAssistReport>"
  '((:DECEL_NONE . 0)
    (:DECEL_AEB . 1)
    (:DECEL_ACC . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DriverAssistReport)))
    "Constants for message type 'DriverAssistReport"
  '((:DECEL_NONE . 0)
    (:DECEL_AEB . 1)
    (:DECEL_ACC . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriverAssistReport>) ostream)
  "Serializes a message object of type '<DriverAssistReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'decel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'decel_src)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fcw_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fcw_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'aeb_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'aeb_precharge) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'aeb_braking) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'acc_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'acc_braking) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriverAssistReport>) istream)
  "Deserializes a message object of type '<DriverAssistReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'decel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'decel_src)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcw_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fcw_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'aeb_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'aeb_precharge) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'aeb_braking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'acc_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'acc_braking) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriverAssistReport>)))
  "Returns string type for a message object of type '<DriverAssistReport>"
  "dbw_mkz_msgs/DriverAssistReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriverAssistReport)))
  "Returns string type for a message object of type 'DriverAssistReport"
  "dbw_mkz_msgs/DriverAssistReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriverAssistReport>)))
  "Returns md5sum for a message object of type '<DriverAssistReport>"
  "97f55d54ac7adaf52a6882520c5247ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriverAssistReport)))
  "Returns md5sum for a message object of type 'DriverAssistReport"
  "97f55d54ac7adaf52a6882520c5247ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriverAssistReport>)))
  "Returns full string definition for message of type '<DriverAssistReport>"
  (cl:format cl:nil "Header header~%~%# Vehicle Decceleration (m/s^2)~%float32 decel~%~%# Deceleration source~%uint8 decel_src~%uint8 DECEL_NONE=0~%uint8 DECEL_AEB=1~%uint8 DECEL_ACC=2~%~%# FCW Status~%bool fcw_enabled~%bool fcw_active~%~%# AEB Status~%bool aeb_enabled~%bool aeb_precharge~%bool aeb_braking~%~%# ACC Status~%bool acc_enabled~%bool acc_braking~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriverAssistReport)))
  "Returns full string definition for message of type 'DriverAssistReport"
  (cl:format cl:nil "Header header~%~%# Vehicle Decceleration (m/s^2)~%float32 decel~%~%# Deceleration source~%uint8 decel_src~%uint8 DECEL_NONE=0~%uint8 DECEL_AEB=1~%uint8 DECEL_ACC=2~%~%# FCW Status~%bool fcw_enabled~%bool fcw_active~%~%# AEB Status~%bool aeb_enabled~%bool aeb_precharge~%bool aeb_braking~%~%# ACC Status~%bool acc_enabled~%bool acc_braking~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriverAssistReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriverAssistReport>))
  "Converts a ROS message object to a list"
  (cl:list 'DriverAssistReport
    (cl:cons ':header (header msg))
    (cl:cons ':decel (decel msg))
    (cl:cons ':decel_src (decel_src msg))
    (cl:cons ':fcw_enabled (fcw_enabled msg))
    (cl:cons ':fcw_active (fcw_active msg))
    (cl:cons ':aeb_enabled (aeb_enabled msg))
    (cl:cons ':aeb_precharge (aeb_precharge msg))
    (cl:cons ':aeb_braking (aeb_braking msg))
    (cl:cons ':acc_enabled (acc_enabled msg))
    (cl:cons ':acc_braking (acc_braking msg))
))
