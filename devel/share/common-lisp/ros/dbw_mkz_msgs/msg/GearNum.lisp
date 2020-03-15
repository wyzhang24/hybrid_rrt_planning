; Auto-generated. Do not edit!


(cl:in-package dbw_mkz_msgs-msg)


;//! \htmlinclude GearNum.msg.html

(cl:defclass <GearNum> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GearNum (<GearNum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearNum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearNum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dbw_mkz_msgs-msg:<GearNum> is deprecated: use dbw_mkz_msgs-msg:GearNum instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <GearNum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:num-val is deprecated.  Use dbw_mkz_msgs-msg:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GearNum>)))
    "Constants for message type '<GearNum>"
  '((:NONE . 0)
    (:DRIVE_D01 . 1)
    (:DRIVE_D02 . 2)
    (:DRIVE_D03 . 3)
    (:DRIVE_D04 . 4)
    (:DRIVE_D05 . 5)
    (:DRIVE_D06 . 6)
    (:DRIVE_D07 . 7)
    (:DRIVE_D08 . 8)
    (:DRIVE_D09 . 9)
    (:DRIVE_D10 . 10)
    (:NEUTRAL . 16)
    (:REVERSE_R01 . 17)
    (:REVERSE_R02 . 18)
    (:PARK . 31))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GearNum)))
    "Constants for message type 'GearNum"
  '((:NONE . 0)
    (:DRIVE_D01 . 1)
    (:DRIVE_D02 . 2)
    (:DRIVE_D03 . 3)
    (:DRIVE_D04 . 4)
    (:DRIVE_D05 . 5)
    (:DRIVE_D06 . 6)
    (:DRIVE_D07 . 7)
    (:DRIVE_D08 . 8)
    (:DRIVE_D09 . 9)
    (:DRIVE_D10 . 10)
    (:NEUTRAL . 16)
    (:REVERSE_R01 . 17)
    (:REVERSE_R02 . 18)
    (:PARK . 31))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearNum>) ostream)
  "Serializes a message object of type '<GearNum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearNum>) istream)
  "Deserializes a message object of type '<GearNum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearNum>)))
  "Returns string type for a message object of type '<GearNum>"
  "dbw_mkz_msgs/GearNum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearNum)))
  "Returns string type for a message object of type 'GearNum"
  "dbw_mkz_msgs/GearNum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearNum>)))
  "Returns md5sum for a message object of type '<GearNum>"
  "796cf18912e88e9df4c9f138d09f2700")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearNum)))
  "Returns md5sum for a message object of type 'GearNum"
  "796cf18912e88e9df4c9f138d09f2700")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearNum>)))
  "Returns full string definition for message of type '<GearNum>"
  (cl:format cl:nil "uint8 num~%~%uint8 NONE=0~%uint8 DRIVE_D01=1~%uint8 DRIVE_D02=2~%uint8 DRIVE_D03=3~%uint8 DRIVE_D04=4~%uint8 DRIVE_D05=5~%uint8 DRIVE_D06=6~%uint8 DRIVE_D07=7~%uint8 DRIVE_D08=8~%uint8 DRIVE_D09=9~%uint8 DRIVE_D10=10~%uint8 NEUTRAL=16~%uint8 REVERSE_R01=17~%uint8 REVERSE_R02=18~%uint8 PARK=31~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearNum)))
  "Returns full string definition for message of type 'GearNum"
  (cl:format cl:nil "uint8 num~%~%uint8 NONE=0~%uint8 DRIVE_D01=1~%uint8 DRIVE_D02=2~%uint8 DRIVE_D03=3~%uint8 DRIVE_D04=4~%uint8 DRIVE_D05=5~%uint8 DRIVE_D06=6~%uint8 DRIVE_D07=7~%uint8 DRIVE_D08=8~%uint8 DRIVE_D09=9~%uint8 DRIVE_D10=10~%uint8 NEUTRAL=16~%uint8 REVERSE_R01=17~%uint8 REVERSE_R02=18~%uint8 PARK=31~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearNum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearNum>))
  "Converts a ROS message object to a list"
  (cl:list 'GearNum
    (cl:cons ':num (num msg))
))
