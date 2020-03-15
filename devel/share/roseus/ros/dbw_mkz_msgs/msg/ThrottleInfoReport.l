;; Auto-generated. Do not edit!


(when (boundp 'dbw_mkz_msgs::ThrottleInfoReport)
  (if (not (find-package "DBW_MKZ_MSGS"))
    (make-package "DBW_MKZ_MSGS"))
  (shadow 'ThrottleInfoReport (find-package "DBW_MKZ_MSGS")))
(unless (find-package "DBW_MKZ_MSGS::THROTTLEINFOREPORT")
  (make-package "DBW_MKZ_MSGS::THROTTLEINFOREPORT"))

(in-package "ROS")
;;//! \htmlinclude ThrottleInfoReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dbw_mkz_msgs::ThrottleInfoReport
  :super ros::object
  :slots (_header _throttle_pc _throttle_rate _throttle_pedal_qf _engine_rpm _gear_num ))

(defmethod dbw_mkz_msgs::ThrottleInfoReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle_pc __throttle_pc) 0.0)
    ((:throttle_rate __throttle_rate) 0.0)
    ((:throttle_pedal_qf __throttle_pedal_qf) (instance dbw_mkz_msgs::QualityFactor :init))
    ((:engine_rpm __engine_rpm) 0.0)
    ((:gear_num __gear_num) (instance dbw_mkz_msgs::GearNum :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle_pc (float __throttle_pc))
   (setq _throttle_rate (float __throttle_rate))
   (setq _throttle_pedal_qf __throttle_pedal_qf)
   (setq _engine_rpm (float __engine_rpm))
   (setq _gear_num __gear_num)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle_pc
   (&optional __throttle_pc)
   (if __throttle_pc (setq _throttle_pc __throttle_pc)) _throttle_pc)
  (:throttle_rate
   (&optional __throttle_rate)
   (if __throttle_rate (setq _throttle_rate __throttle_rate)) _throttle_rate)
  (:throttle_pedal_qf
   (&rest __throttle_pedal_qf)
   (if (keywordp (car __throttle_pedal_qf))
       (send* _throttle_pedal_qf __throttle_pedal_qf)
     (progn
       (if __throttle_pedal_qf (setq _throttle_pedal_qf (car __throttle_pedal_qf)))
       _throttle_pedal_qf)))
  (:engine_rpm
   (&optional __engine_rpm)
   (if __engine_rpm (setq _engine_rpm __engine_rpm)) _engine_rpm)
  (:gear_num
   (&rest __gear_num)
   (if (keywordp (car __gear_num))
       (send* _gear_num __gear_num)
     (progn
       (if __gear_num (setq _gear_num (car __gear_num)))
       _gear_num)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _throttle_pc
    4
    ;; float32 _throttle_rate
    4
    ;; dbw_mkz_msgs/QualityFactor _throttle_pedal_qf
    (send _throttle_pedal_qf :serialization-length)
    ;; float32 _engine_rpm
    4
    ;; dbw_mkz_msgs/GearNum _gear_num
    (send _gear_num :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _throttle_pc
       (sys::poke _throttle_pc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_rate
       (sys::poke _throttle_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dbw_mkz_msgs/QualityFactor _throttle_pedal_qf
       (send _throttle_pedal_qf :serialize s)
     ;; float32 _engine_rpm
       (sys::poke _engine_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dbw_mkz_msgs/GearNum _gear_num
       (send _gear_num :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _throttle_pc
     (setq _throttle_pc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_rate
     (setq _throttle_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dbw_mkz_msgs/QualityFactor _throttle_pedal_qf
     (send _throttle_pedal_qf :deserialize buf ptr-) (incf ptr- (send _throttle_pedal_qf :serialization-length))
   ;; float32 _engine_rpm
     (setq _engine_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dbw_mkz_msgs/GearNum _gear_num
     (send _gear_num :deserialize buf ptr-) (incf ptr- (send _gear_num :serialization-length))
   ;;
   self)
  )

(setf (get dbw_mkz_msgs::ThrottleInfoReport :md5sum-) "6ed272050114755a930a6cf633944b48")
(setf (get dbw_mkz_msgs::ThrottleInfoReport :datatype-) "dbw_mkz_msgs/ThrottleInfoReport")
(setf (get dbw_mkz_msgs::ThrottleInfoReport :definition-)
      "Header header

# Throttle Pedal
float32 throttle_pc   # Throttle pedal percent, range 0 to 1
float32 throttle_rate # Throttle pedal change per second (1/s)
QualityFactor throttle_pedal_qf # Non-zero is limp-home

# Engine
float32 engine_rpm    # Engine Speed (rpm)

# Gear Num
GearNum gear_num      # Gear Number

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

================================================================================
MSG: dbw_mkz_msgs/QualityFactor
uint8 value

uint8 OK=0
uint8 EMPTY=1
uint8 CORRUPT=2
uint8 FAULT=3

================================================================================
MSG: dbw_mkz_msgs/GearNum
uint8 num

uint8 NONE=0
uint8 DRIVE_D01=1
uint8 DRIVE_D02=2
uint8 DRIVE_D03=3
uint8 DRIVE_D04=4
uint8 DRIVE_D05=5
uint8 DRIVE_D06=6
uint8 DRIVE_D07=7
uint8 DRIVE_D08=8
uint8 DRIVE_D09=9
uint8 DRIVE_D10=10
uint8 NEUTRAL=16
uint8 REVERSE_R01=17
uint8 REVERSE_R02=18
uint8 PARK=31
")



(provide :dbw_mkz_msgs/ThrottleInfoReport "6ed272050114755a930a6cf633944b48")


