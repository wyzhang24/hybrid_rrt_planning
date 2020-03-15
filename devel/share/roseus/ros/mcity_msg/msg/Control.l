;; Auto-generated. Do not edit!


(when (boundp 'mcity_msg::Control)
  (if (not (find-package "MCITY_MSG"))
    (make-package "MCITY_MSG"))
  (shadow 'Control (find-package "MCITY_MSG")))
(unless (find-package "MCITY_MSG::CONTROL")
  (make-package "MCITY_MSG::CONTROL"))

(in-package "ROS")
;;//! \htmlinclude Control.msg.html


(defclass mcity_msg::Control
  :super ros::object
  :slots (_timestamp _count _brake_cmd _throttle_cmd _steering_cmd _gear_cmd _turn_signal_cmd ))

(defmethod mcity_msg::Control
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:count __count) 0)
    ((:brake_cmd __brake_cmd) 0.0)
    ((:throttle_cmd __throttle_cmd) 0.0)
    ((:steering_cmd __steering_cmd) 0.0)
    ((:gear_cmd __gear_cmd) 0)
    ((:turn_signal_cmd __turn_signal_cmd) 0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _count (round __count))
   (setq _brake_cmd (float __brake_cmd))
   (setq _throttle_cmd (float __throttle_cmd))
   (setq _steering_cmd (float __steering_cmd))
   (setq _gear_cmd (round __gear_cmd))
   (setq _turn_signal_cmd (round __turn_signal_cmd))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:brake_cmd
   (&optional __brake_cmd)
   (if __brake_cmd (setq _brake_cmd __brake_cmd)) _brake_cmd)
  (:throttle_cmd
   (&optional __throttle_cmd)
   (if __throttle_cmd (setq _throttle_cmd __throttle_cmd)) _throttle_cmd)
  (:steering_cmd
   (&optional __steering_cmd)
   (if __steering_cmd (setq _steering_cmd __steering_cmd)) _steering_cmd)
  (:gear_cmd
   (&optional __gear_cmd)
   (if __gear_cmd (setq _gear_cmd __gear_cmd)) _gear_cmd)
  (:turn_signal_cmd
   (&optional __turn_signal_cmd)
   (if __turn_signal_cmd (setq _turn_signal_cmd __turn_signal_cmd)) _turn_signal_cmd)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; int32 _count
    4
    ;; float64 _brake_cmd
    8
    ;; float64 _throttle_cmd
    8
    ;; float64 _steering_cmd
    8
    ;; int16 _gear_cmd
    2
    ;; int16 _turn_signal_cmd
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _count
       (write-long _count s)
     ;; float64 _brake_cmd
       (sys::poke _brake_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle_cmd
       (sys::poke _throttle_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_cmd
       (sys::poke _steering_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _gear_cmd
       (write-word _gear_cmd s)
     ;; int16 _turn_signal_cmd
       (write-word _turn_signal_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _brake_cmd
     (setq _brake_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle_cmd
     (setq _throttle_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_cmd
     (setq _steering_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _gear_cmd
     (setq _gear_cmd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _turn_signal_cmd
     (setq _turn_signal_cmd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mcity_msg::Control :md5sum-) "8991eb8db72ef6936a21cd28b0eaadf3")
(setf (get mcity_msg::Control :datatype-) "mcity_msg/Control")
(setf (get mcity_msg::Control :definition-)
      "
float64 timestamp
int32 	count
float64 brake_cmd
float64 throttle_cmd
float64 steering_cmd
int16 	gear_cmd
int16 	turn_signal_cmd

 

")



(provide :mcity_msg/Control "8991eb8db72ef6936a21cd28b0eaadf3")


