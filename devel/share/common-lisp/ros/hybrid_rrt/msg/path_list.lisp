; Auto-generated. Do not edit!


(cl:in-package hybrid_rrt-msg)


;//! \htmlinclude path_list.msg.html

(cl:defclass <path_list> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type (cl:vector hybrid_rrt-msg:path_point)
   :initform (cl:make-array 0 :element-type 'hybrid_rrt-msg:path_point :initial-element (cl:make-instance 'hybrid_rrt-msg:path_point))))
)

(cl:defclass path_list (<path_list>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path_list>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path_list)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hybrid_rrt-msg:<path_list> is deprecated: use hybrid_rrt-msg:path_list instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <path_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_rrt-msg:path-val is deprecated.  Use hybrid_rrt-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path_list>) ostream)
  "Serializes a message object of type '<path_list>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path_list>) istream)
  "Deserializes a message object of type '<path_list>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hybrid_rrt-msg:path_point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path_list>)))
  "Returns string type for a message object of type '<path_list>"
  "hybrid_rrt/path_list")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path_list)))
  "Returns string type for a message object of type 'path_list"
  "hybrid_rrt/path_list")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path_list>)))
  "Returns md5sum for a message object of type '<path_list>"
  "11f32201945158a1dde087b80a756425")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path_list)))
  "Returns md5sum for a message object of type 'path_list"
  "11f32201945158a1dde087b80a756425")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path_list>)))
  "Returns full string definition for message of type '<path_list>"
  (cl:format cl:nil "path_point[] path~%~%================================================================================~%MSG: hybrid_rrt/path_point~%float64 x~%float64 y~%float64 yaw~%int32 dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path_list)))
  "Returns full string definition for message of type 'path_list"
  (cl:format cl:nil "path_point[] path~%~%================================================================================~%MSG: hybrid_rrt/path_point~%float64 x~%float64 y~%float64 yaw~%int32 dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path_list>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path_list>))
  "Converts a ROS message object to a list"
  (cl:list 'path_list
    (cl:cons ':path (path msg))
))
