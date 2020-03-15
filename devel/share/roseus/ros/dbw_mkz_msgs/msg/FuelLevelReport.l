;; Auto-generated. Do not edit!


(when (boundp 'dbw_mkz_msgs::FuelLevelReport)
  (if (not (find-package "DBW_MKZ_MSGS"))
    (make-package "DBW_MKZ_MSGS"))
  (shadow 'FuelLevelReport (find-package "DBW_MKZ_MSGS")))
(unless (find-package "DBW_MKZ_MSGS::FUELLEVELREPORT")
  (make-package "DBW_MKZ_MSGS::FUELLEVELREPORT"))

(in-package "ROS")
;;//! \htmlinclude FuelLevelReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dbw_mkz_msgs::FuelLevelReport
  :super ros::object
  :slots (_header _fuel_level _battery_12v _battery_hev _odometer ))

(defmethod dbw_mkz_msgs::FuelLevelReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fuel_level __fuel_level) 0.0)
    ((:battery_12v __battery_12v) 0.0)
    ((:battery_hev __battery_hev) 0.0)
    ((:odometer __odometer) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fuel_level (float __fuel_level))
   (setq _battery_12v (float __battery_12v))
   (setq _battery_hev (float __battery_hev))
   (setq _odometer (float __odometer))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fuel_level
   (&optional __fuel_level)
   (if __fuel_level (setq _fuel_level __fuel_level)) _fuel_level)
  (:battery_12v
   (&optional __battery_12v)
   (if __battery_12v (setq _battery_12v __battery_12v)) _battery_12v)
  (:battery_hev
   (&optional __battery_hev)
   (if __battery_hev (setq _battery_hev __battery_hev)) _battery_hev)
  (:odometer
   (&optional __odometer)
   (if __odometer (setq _odometer __odometer)) _odometer)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _fuel_level
    4
    ;; float32 _battery_12v
    4
    ;; float32 _battery_hev
    4
    ;; float32 _odometer
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _fuel_level
       (sys::poke _fuel_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_12v
       (sys::poke _battery_12v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_hev
       (sys::poke _battery_hev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometer
       (sys::poke _odometer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _fuel_level
     (setq _fuel_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_12v
     (setq _battery_12v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_hev
     (setq _battery_hev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometer
     (setq _odometer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dbw_mkz_msgs::FuelLevelReport :md5sum-) "f937217d0b14552d7365d7cdca64a7ff")
(setf (get dbw_mkz_msgs::FuelLevelReport :datatype-) "dbw_mkz_msgs/FuelLevelReport")
(setf (get dbw_mkz_msgs::FuelLevelReport :definition-)
      "Header header

# Fuel level (%, 0 to 100)
float32 fuel_level

# 12V battery voltage
float32 battery_12v

# Hybrid battery voltage
float32 battery_hev

# Odometer (km, 0.1km resolution)
float32 odometer


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



(provide :dbw_mkz_msgs/FuelLevelReport "f937217d0b14552d7365d7cdca64a7ff")


