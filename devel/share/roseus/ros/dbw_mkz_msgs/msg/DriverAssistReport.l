;; Auto-generated. Do not edit!


(when (boundp 'dbw_mkz_msgs::DriverAssistReport)
  (if (not (find-package "DBW_MKZ_MSGS"))
    (make-package "DBW_MKZ_MSGS"))
  (shadow 'DriverAssistReport (find-package "DBW_MKZ_MSGS")))
(unless (find-package "DBW_MKZ_MSGS::DRIVERASSISTREPORT")
  (make-package "DBW_MKZ_MSGS::DRIVERASSISTREPORT"))

(in-package "ROS")
;;//! \htmlinclude DriverAssistReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*DECEL_NONE*" (find-package "DBW_MKZ_MSGS::DRIVERASSISTREPORT"))
(shadow '*DECEL_NONE* (find-package "DBW_MKZ_MSGS::DRIVERASSISTREPORT"))
(defconstant dbw_mkz_msgs::DriverAssistReport::*DECEL_NONE* 0)
(intern "*DECEL_AEB*" (find-package "DBW_MKZ_MSGS::DRIVERASSISTREPORT"))
(shadow '*DECEL_AEB* (find-package "DBW_MKZ_MSGS::DRIVERASSISTREPORT"))
(defconstant dbw_mkz_msgs::DriverAssistReport::*DECEL_AEB* 1)
(intern "*DECEL_ACC*" (find-package "DBW_MKZ_MSGS::DRIVERASSISTREPORT"))
(shadow '*DECEL_ACC* (find-package "DBW_MKZ_MSGS::DRIVERASSISTREPORT"))
(defconstant dbw_mkz_msgs::DriverAssistReport::*DECEL_ACC* 2)
(defclass dbw_mkz_msgs::DriverAssistReport
  :super ros::object
  :slots (_header _decel _decel_src _fcw_enabled _fcw_active _aeb_enabled _aeb_precharge _aeb_braking _acc_enabled _acc_braking ))

(defmethod dbw_mkz_msgs::DriverAssistReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:decel __decel) 0.0)
    ((:decel_src __decel_src) 0)
    ((:fcw_enabled __fcw_enabled) nil)
    ((:fcw_active __fcw_active) nil)
    ((:aeb_enabled __aeb_enabled) nil)
    ((:aeb_precharge __aeb_precharge) nil)
    ((:aeb_braking __aeb_braking) nil)
    ((:acc_enabled __acc_enabled) nil)
    ((:acc_braking __acc_braking) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _decel (float __decel))
   (setq _decel_src (round __decel_src))
   (setq _fcw_enabled __fcw_enabled)
   (setq _fcw_active __fcw_active)
   (setq _aeb_enabled __aeb_enabled)
   (setq _aeb_precharge __aeb_precharge)
   (setq _aeb_braking __aeb_braking)
   (setq _acc_enabled __acc_enabled)
   (setq _acc_braking __acc_braking)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:decel
   (&optional __decel)
   (if __decel (setq _decel __decel)) _decel)
  (:decel_src
   (&optional __decel_src)
   (if __decel_src (setq _decel_src __decel_src)) _decel_src)
  (:fcw_enabled
   (&optional __fcw_enabled)
   (if __fcw_enabled (setq _fcw_enabled __fcw_enabled)) _fcw_enabled)
  (:fcw_active
   (&optional __fcw_active)
   (if __fcw_active (setq _fcw_active __fcw_active)) _fcw_active)
  (:aeb_enabled
   (&optional __aeb_enabled)
   (if __aeb_enabled (setq _aeb_enabled __aeb_enabled)) _aeb_enabled)
  (:aeb_precharge
   (&optional __aeb_precharge)
   (if __aeb_precharge (setq _aeb_precharge __aeb_precharge)) _aeb_precharge)
  (:aeb_braking
   (&optional __aeb_braking)
   (if __aeb_braking (setq _aeb_braking __aeb_braking)) _aeb_braking)
  (:acc_enabled
   (&optional __acc_enabled)
   (if __acc_enabled (setq _acc_enabled __acc_enabled)) _acc_enabled)
  (:acc_braking
   (&optional __acc_braking)
   (if __acc_braking (setq _acc_braking __acc_braking)) _acc_braking)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _decel
    4
    ;; uint8 _decel_src
    1
    ;; bool _fcw_enabled
    1
    ;; bool _fcw_active
    1
    ;; bool _aeb_enabled
    1
    ;; bool _aeb_precharge
    1
    ;; bool _aeb_braking
    1
    ;; bool _acc_enabled
    1
    ;; bool _acc_braking
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _decel
       (sys::poke _decel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _decel_src
       (write-byte _decel_src s)
     ;; bool _fcw_enabled
       (if _fcw_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _fcw_active
       (if _fcw_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _aeb_enabled
       (if _aeb_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _aeb_precharge
       (if _aeb_precharge (write-byte -1 s) (write-byte 0 s))
     ;; bool _aeb_braking
       (if _aeb_braking (write-byte -1 s) (write-byte 0 s))
     ;; bool _acc_enabled
       (if _acc_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _acc_braking
       (if _acc_braking (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _decel
     (setq _decel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _decel_src
     (setq _decel_src (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _fcw_enabled
     (setq _fcw_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fcw_active
     (setq _fcw_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _aeb_enabled
     (setq _aeb_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _aeb_precharge
     (setq _aeb_precharge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _aeb_braking
     (setq _aeb_braking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _acc_enabled
     (setq _acc_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _acc_braking
     (setq _acc_braking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dbw_mkz_msgs::DriverAssistReport :md5sum-) "97f55d54ac7adaf52a6882520c5247ff")
(setf (get dbw_mkz_msgs::DriverAssistReport :datatype-) "dbw_mkz_msgs/DriverAssistReport")
(setf (get dbw_mkz_msgs::DriverAssistReport :definition-)
      "Header header

# Vehicle Decceleration (m/s^2)
float32 decel

# Deceleration source
uint8 decel_src
uint8 DECEL_NONE=0
uint8 DECEL_AEB=1
uint8 DECEL_ACC=2

# FCW Status
bool fcw_enabled
bool fcw_active

# AEB Status
bool aeb_enabled
bool aeb_precharge
bool aeb_braking

# ACC Status
bool acc_enabled
bool acc_braking

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :dbw_mkz_msgs/DriverAssistReport "97f55d54ac7adaf52a6882520c5247ff")


