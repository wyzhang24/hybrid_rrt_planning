; Auto-generated. Do not edit!


(cl:in-package dbw_mkz_msgs-msg)


;//! \htmlinclude QualityFactor.msg.html

(cl:defclass <QualityFactor> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass QualityFactor (<QualityFactor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QualityFactor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QualityFactor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dbw_mkz_msgs-msg:<QualityFactor> is deprecated: use dbw_mkz_msgs-msg:QualityFactor instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <QualityFactor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dbw_mkz_msgs-msg:value-val is deprecated.  Use dbw_mkz_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<QualityFactor>)))
    "Constants for message type '<QualityFactor>"
  '((:OK . 0)
    (:EMPTY . 1)
    (:CORRUPT . 2)
    (:FAULT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'QualityFactor)))
    "Constants for message type 'QualityFactor"
  '((:OK . 0)
    (:EMPTY . 1)
    (:CORRUPT . 2)
    (:FAULT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QualityFactor>) ostream)
  "Serializes a message object of type '<QualityFactor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QualityFactor>) istream)
  "Deserializes a message object of type '<QualityFactor>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QualityFactor>)))
  "Returns string type for a message object of type '<QualityFactor>"
  "dbw_mkz_msgs/QualityFactor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityFactor)))
  "Returns string type for a message object of type 'QualityFactor"
  "dbw_mkz_msgs/QualityFactor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QualityFactor>)))
  "Returns md5sum for a message object of type '<QualityFactor>"
  "e016f2e62eedbf749ab8c93a8c2f786f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QualityFactor)))
  "Returns md5sum for a message object of type 'QualityFactor"
  "e016f2e62eedbf749ab8c93a8c2f786f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QualityFactor>)))
  "Returns full string definition for message of type '<QualityFactor>"
  (cl:format cl:nil "uint8 value~%~%uint8 OK=0~%uint8 EMPTY=1~%uint8 CORRUPT=2~%uint8 FAULT=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QualityFactor)))
  "Returns full string definition for message of type 'QualityFactor"
  (cl:format cl:nil "uint8 value~%~%uint8 OK=0~%uint8 EMPTY=1~%uint8 CORRUPT=2~%uint8 FAULT=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QualityFactor>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QualityFactor>))
  "Converts a ROS message object to a list"
  (cl:list 'QualityFactor
    (cl:cons ':value (value msg))
))
