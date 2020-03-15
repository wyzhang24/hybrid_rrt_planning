;; Auto-generated. Do not edit!


(when (boundp 'dbw_mkz_msgs::Misc1Report)
  (if (not (find-package "DBW_MKZ_MSGS"))
    (make-package "DBW_MKZ_MSGS"))
  (shadow 'Misc1Report (find-package "DBW_MKZ_MSGS")))
(unless (find-package "DBW_MKZ_MSGS::MISC1REPORT")
  (make-package "DBW_MKZ_MSGS::MISC1REPORT"))

(in-package "ROS")
;;//! \htmlinclude Misc1Report.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dbw_mkz_msgs::Misc1Report
  :super ros::object
  :slots (_header _turn_signal _high_beam_headlights _wiper _ambient_light _outside_temperature _btn_cc_on _btn_cc_off _btn_cc_on_off _btn_cc_res _btn_cc_cncl _btn_cc_res_cncl _btn_cc_res_inc _btn_cc_res_dec _btn_cc_set_inc _btn_cc_set_dec _btn_cc_gap_inc _btn_cc_gap_dec _btn_la_on_off _btn_ld_ok _btn_ld_up _btn_ld_down _btn_ld_left _btn_ld_right _btn_rd_ok _btn_rd_up _btn_rd_down _btn_rd_left _btn_rd_right _btn_vol_inc _btn_vol_dec _btn_mute _btn_media _btn_prev _btn_next _btn_speak _btn_call_start _btn_call_end _fault_bus _door_driver _door_passenger _door_rear_left _door_rear_right _door_hood _door_trunk _passenger_detect _passenger_airbag _buckle_driver _buckle_passenger ))

(defmethod dbw_mkz_msgs::Misc1Report
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:turn_signal __turn_signal) (instance dbw_mkz_msgs::TurnSignal :init))
    ((:high_beam_headlights __high_beam_headlights) nil)
    ((:wiper __wiper) (instance dbw_mkz_msgs::Wiper :init))
    ((:ambient_light __ambient_light) (instance dbw_mkz_msgs::AmbientLight :init))
    ((:outside_temperature __outside_temperature) 0.0)
    ((:btn_cc_on __btn_cc_on) nil)
    ((:btn_cc_off __btn_cc_off) nil)
    ((:btn_cc_on_off __btn_cc_on_off) nil)
    ((:btn_cc_res __btn_cc_res) nil)
    ((:btn_cc_cncl __btn_cc_cncl) nil)
    ((:btn_cc_res_cncl __btn_cc_res_cncl) nil)
    ((:btn_cc_res_inc __btn_cc_res_inc) nil)
    ((:btn_cc_res_dec __btn_cc_res_dec) nil)
    ((:btn_cc_set_inc __btn_cc_set_inc) nil)
    ((:btn_cc_set_dec __btn_cc_set_dec) nil)
    ((:btn_cc_gap_inc __btn_cc_gap_inc) nil)
    ((:btn_cc_gap_dec __btn_cc_gap_dec) nil)
    ((:btn_la_on_off __btn_la_on_off) nil)
    ((:btn_ld_ok __btn_ld_ok) nil)
    ((:btn_ld_up __btn_ld_up) nil)
    ((:btn_ld_down __btn_ld_down) nil)
    ((:btn_ld_left __btn_ld_left) nil)
    ((:btn_ld_right __btn_ld_right) nil)
    ((:btn_rd_ok __btn_rd_ok) nil)
    ((:btn_rd_up __btn_rd_up) nil)
    ((:btn_rd_down __btn_rd_down) nil)
    ((:btn_rd_left __btn_rd_left) nil)
    ((:btn_rd_right __btn_rd_right) nil)
    ((:btn_vol_inc __btn_vol_inc) nil)
    ((:btn_vol_dec __btn_vol_dec) nil)
    ((:btn_mute __btn_mute) nil)
    ((:btn_media __btn_media) nil)
    ((:btn_prev __btn_prev) nil)
    ((:btn_next __btn_next) nil)
    ((:btn_speak __btn_speak) nil)
    ((:btn_call_start __btn_call_start) nil)
    ((:btn_call_end __btn_call_end) nil)
    ((:fault_bus __fault_bus) nil)
    ((:door_driver __door_driver) nil)
    ((:door_passenger __door_passenger) nil)
    ((:door_rear_left __door_rear_left) nil)
    ((:door_rear_right __door_rear_right) nil)
    ((:door_hood __door_hood) nil)
    ((:door_trunk __door_trunk) nil)
    ((:passenger_detect __passenger_detect) nil)
    ((:passenger_airbag __passenger_airbag) nil)
    ((:buckle_driver __buckle_driver) nil)
    ((:buckle_passenger __buckle_passenger) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _turn_signal __turn_signal)
   (setq _high_beam_headlights __high_beam_headlights)
   (setq _wiper __wiper)
   (setq _ambient_light __ambient_light)
   (setq _outside_temperature (float __outside_temperature))
   (setq _btn_cc_on __btn_cc_on)
   (setq _btn_cc_off __btn_cc_off)
   (setq _btn_cc_on_off __btn_cc_on_off)
   (setq _btn_cc_res __btn_cc_res)
   (setq _btn_cc_cncl __btn_cc_cncl)
   (setq _btn_cc_res_cncl __btn_cc_res_cncl)
   (setq _btn_cc_res_inc __btn_cc_res_inc)
   (setq _btn_cc_res_dec __btn_cc_res_dec)
   (setq _btn_cc_set_inc __btn_cc_set_inc)
   (setq _btn_cc_set_dec __btn_cc_set_dec)
   (setq _btn_cc_gap_inc __btn_cc_gap_inc)
   (setq _btn_cc_gap_dec __btn_cc_gap_dec)
   (setq _btn_la_on_off __btn_la_on_off)
   (setq _btn_ld_ok __btn_ld_ok)
   (setq _btn_ld_up __btn_ld_up)
   (setq _btn_ld_down __btn_ld_down)
   (setq _btn_ld_left __btn_ld_left)
   (setq _btn_ld_right __btn_ld_right)
   (setq _btn_rd_ok __btn_rd_ok)
   (setq _btn_rd_up __btn_rd_up)
   (setq _btn_rd_down __btn_rd_down)
   (setq _btn_rd_left __btn_rd_left)
   (setq _btn_rd_right __btn_rd_right)
   (setq _btn_vol_inc __btn_vol_inc)
   (setq _btn_vol_dec __btn_vol_dec)
   (setq _btn_mute __btn_mute)
   (setq _btn_media __btn_media)
   (setq _btn_prev __btn_prev)
   (setq _btn_next __btn_next)
   (setq _btn_speak __btn_speak)
   (setq _btn_call_start __btn_call_start)
   (setq _btn_call_end __btn_call_end)
   (setq _fault_bus __fault_bus)
   (setq _door_driver __door_driver)
   (setq _door_passenger __door_passenger)
   (setq _door_rear_left __door_rear_left)
   (setq _door_rear_right __door_rear_right)
   (setq _door_hood __door_hood)
   (setq _door_trunk __door_trunk)
   (setq _passenger_detect __passenger_detect)
   (setq _passenger_airbag __passenger_airbag)
   (setq _buckle_driver __buckle_driver)
   (setq _buckle_passenger __buckle_passenger)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:turn_signal
   (&rest __turn_signal)
   (if (keywordp (car __turn_signal))
       (send* _turn_signal __turn_signal)
     (progn
       (if __turn_signal (setq _turn_signal (car __turn_signal)))
       _turn_signal)))
  (:high_beam_headlights
   (&optional __high_beam_headlights)
   (if __high_beam_headlights (setq _high_beam_headlights __high_beam_headlights)) _high_beam_headlights)
  (:wiper
   (&rest __wiper)
   (if (keywordp (car __wiper))
       (send* _wiper __wiper)
     (progn
       (if __wiper (setq _wiper (car __wiper)))
       _wiper)))
  (:ambient_light
   (&rest __ambient_light)
   (if (keywordp (car __ambient_light))
       (send* _ambient_light __ambient_light)
     (progn
       (if __ambient_light (setq _ambient_light (car __ambient_light)))
       _ambient_light)))
  (:outside_temperature
   (&optional __outside_temperature)
   (if __outside_temperature (setq _outside_temperature __outside_temperature)) _outside_temperature)
  (:btn_cc_on
   (&optional __btn_cc_on)
   (if __btn_cc_on (setq _btn_cc_on __btn_cc_on)) _btn_cc_on)
  (:btn_cc_off
   (&optional __btn_cc_off)
   (if __btn_cc_off (setq _btn_cc_off __btn_cc_off)) _btn_cc_off)
  (:btn_cc_on_off
   (&optional __btn_cc_on_off)
   (if __btn_cc_on_off (setq _btn_cc_on_off __btn_cc_on_off)) _btn_cc_on_off)
  (:btn_cc_res
   (&optional __btn_cc_res)
   (if __btn_cc_res (setq _btn_cc_res __btn_cc_res)) _btn_cc_res)
  (:btn_cc_cncl
   (&optional __btn_cc_cncl)
   (if __btn_cc_cncl (setq _btn_cc_cncl __btn_cc_cncl)) _btn_cc_cncl)
  (:btn_cc_res_cncl
   (&optional __btn_cc_res_cncl)
   (if __btn_cc_res_cncl (setq _btn_cc_res_cncl __btn_cc_res_cncl)) _btn_cc_res_cncl)
  (:btn_cc_res_inc
   (&optional __btn_cc_res_inc)
   (if __btn_cc_res_inc (setq _btn_cc_res_inc __btn_cc_res_inc)) _btn_cc_res_inc)
  (:btn_cc_res_dec
   (&optional __btn_cc_res_dec)
   (if __btn_cc_res_dec (setq _btn_cc_res_dec __btn_cc_res_dec)) _btn_cc_res_dec)
  (:btn_cc_set_inc
   (&optional __btn_cc_set_inc)
   (if __btn_cc_set_inc (setq _btn_cc_set_inc __btn_cc_set_inc)) _btn_cc_set_inc)
  (:btn_cc_set_dec
   (&optional __btn_cc_set_dec)
   (if __btn_cc_set_dec (setq _btn_cc_set_dec __btn_cc_set_dec)) _btn_cc_set_dec)
  (:btn_cc_gap_inc
   (&optional __btn_cc_gap_inc)
   (if __btn_cc_gap_inc (setq _btn_cc_gap_inc __btn_cc_gap_inc)) _btn_cc_gap_inc)
  (:btn_cc_gap_dec
   (&optional __btn_cc_gap_dec)
   (if __btn_cc_gap_dec (setq _btn_cc_gap_dec __btn_cc_gap_dec)) _btn_cc_gap_dec)
  (:btn_la_on_off
   (&optional __btn_la_on_off)
   (if __btn_la_on_off (setq _btn_la_on_off __btn_la_on_off)) _btn_la_on_off)
  (:btn_ld_ok
   (&optional __btn_ld_ok)
   (if __btn_ld_ok (setq _btn_ld_ok __btn_ld_ok)) _btn_ld_ok)
  (:btn_ld_up
   (&optional __btn_ld_up)
   (if __btn_ld_up (setq _btn_ld_up __btn_ld_up)) _btn_ld_up)
  (:btn_ld_down
   (&optional __btn_ld_down)
   (if __btn_ld_down (setq _btn_ld_down __btn_ld_down)) _btn_ld_down)
  (:btn_ld_left
   (&optional __btn_ld_left)
   (if __btn_ld_left (setq _btn_ld_left __btn_ld_left)) _btn_ld_left)
  (:btn_ld_right
   (&optional __btn_ld_right)
   (if __btn_ld_right (setq _btn_ld_right __btn_ld_right)) _btn_ld_right)
  (:btn_rd_ok
   (&optional __btn_rd_ok)
   (if __btn_rd_ok (setq _btn_rd_ok __btn_rd_ok)) _btn_rd_ok)
  (:btn_rd_up
   (&optional __btn_rd_up)
   (if __btn_rd_up (setq _btn_rd_up __btn_rd_up)) _btn_rd_up)
  (:btn_rd_down
   (&optional __btn_rd_down)
   (if __btn_rd_down (setq _btn_rd_down __btn_rd_down)) _btn_rd_down)
  (:btn_rd_left
   (&optional __btn_rd_left)
   (if __btn_rd_left (setq _btn_rd_left __btn_rd_left)) _btn_rd_left)
  (:btn_rd_right
   (&optional __btn_rd_right)
   (if __btn_rd_right (setq _btn_rd_right __btn_rd_right)) _btn_rd_right)
  (:btn_vol_inc
   (&optional __btn_vol_inc)
   (if __btn_vol_inc (setq _btn_vol_inc __btn_vol_inc)) _btn_vol_inc)
  (:btn_vol_dec
   (&optional __btn_vol_dec)
   (if __btn_vol_dec (setq _btn_vol_dec __btn_vol_dec)) _btn_vol_dec)
  (:btn_mute
   (&optional __btn_mute)
   (if __btn_mute (setq _btn_mute __btn_mute)) _btn_mute)
  (:btn_media
   (&optional __btn_media)
   (if __btn_media (setq _btn_media __btn_media)) _btn_media)
  (:btn_prev
   (&optional __btn_prev)
   (if __btn_prev (setq _btn_prev __btn_prev)) _btn_prev)
  (:btn_next
   (&optional __btn_next)
   (if __btn_next (setq _btn_next __btn_next)) _btn_next)
  (:btn_speak
   (&optional __btn_speak)
   (if __btn_speak (setq _btn_speak __btn_speak)) _btn_speak)
  (:btn_call_start
   (&optional __btn_call_start)
   (if __btn_call_start (setq _btn_call_start __btn_call_start)) _btn_call_start)
  (:btn_call_end
   (&optional __btn_call_end)
   (if __btn_call_end (setq _btn_call_end __btn_call_end)) _btn_call_end)
  (:fault_bus
   (&optional __fault_bus)
   (if __fault_bus (setq _fault_bus __fault_bus)) _fault_bus)
  (:door_driver
   (&optional __door_driver)
   (if __door_driver (setq _door_driver __door_driver)) _door_driver)
  (:door_passenger
   (&optional __door_passenger)
   (if __door_passenger (setq _door_passenger __door_passenger)) _door_passenger)
  (:door_rear_left
   (&optional __door_rear_left)
   (if __door_rear_left (setq _door_rear_left __door_rear_left)) _door_rear_left)
  (:door_rear_right
   (&optional __door_rear_right)
   (if __door_rear_right (setq _door_rear_right __door_rear_right)) _door_rear_right)
  (:door_hood
   (&optional __door_hood)
   (if __door_hood (setq _door_hood __door_hood)) _door_hood)
  (:door_trunk
   (&optional __door_trunk)
   (if __door_trunk (setq _door_trunk __door_trunk)) _door_trunk)
  (:passenger_detect
   (&optional __passenger_detect)
   (if __passenger_detect (setq _passenger_detect __passenger_detect)) _passenger_detect)
  (:passenger_airbag
   (&optional __passenger_airbag)
   (if __passenger_airbag (setq _passenger_airbag __passenger_airbag)) _passenger_airbag)
  (:buckle_driver
   (&optional __buckle_driver)
   (if __buckle_driver (setq _buckle_driver __buckle_driver)) _buckle_driver)
  (:buckle_passenger
   (&optional __buckle_passenger)
   (if __buckle_passenger (setq _buckle_passenger __buckle_passenger)) _buckle_passenger)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; dbw_mkz_msgs/TurnSignal _turn_signal
    (send _turn_signal :serialization-length)
    ;; bool _high_beam_headlights
    1
    ;; dbw_mkz_msgs/Wiper _wiper
    (send _wiper :serialization-length)
    ;; dbw_mkz_msgs/AmbientLight _ambient_light
    (send _ambient_light :serialization-length)
    ;; float32 _outside_temperature
    4
    ;; bool _btn_cc_on
    1
    ;; bool _btn_cc_off
    1
    ;; bool _btn_cc_on_off
    1
    ;; bool _btn_cc_res
    1
    ;; bool _btn_cc_cncl
    1
    ;; bool _btn_cc_res_cncl
    1
    ;; bool _btn_cc_res_inc
    1
    ;; bool _btn_cc_res_dec
    1
    ;; bool _btn_cc_set_inc
    1
    ;; bool _btn_cc_set_dec
    1
    ;; bool _btn_cc_gap_inc
    1
    ;; bool _btn_cc_gap_dec
    1
    ;; bool _btn_la_on_off
    1
    ;; bool _btn_ld_ok
    1
    ;; bool _btn_ld_up
    1
    ;; bool _btn_ld_down
    1
    ;; bool _btn_ld_left
    1
    ;; bool _btn_ld_right
    1
    ;; bool _btn_rd_ok
    1
    ;; bool _btn_rd_up
    1
    ;; bool _btn_rd_down
    1
    ;; bool _btn_rd_left
    1
    ;; bool _btn_rd_right
    1
    ;; bool _btn_vol_inc
    1
    ;; bool _btn_vol_dec
    1
    ;; bool _btn_mute
    1
    ;; bool _btn_media
    1
    ;; bool _btn_prev
    1
    ;; bool _btn_next
    1
    ;; bool _btn_speak
    1
    ;; bool _btn_call_start
    1
    ;; bool _btn_call_end
    1
    ;; bool _fault_bus
    1
    ;; bool _door_driver
    1
    ;; bool _door_passenger
    1
    ;; bool _door_rear_left
    1
    ;; bool _door_rear_right
    1
    ;; bool _door_hood
    1
    ;; bool _door_trunk
    1
    ;; bool _passenger_detect
    1
    ;; bool _passenger_airbag
    1
    ;; bool _buckle_driver
    1
    ;; bool _buckle_passenger
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; dbw_mkz_msgs/TurnSignal _turn_signal
       (send _turn_signal :serialize s)
     ;; bool _high_beam_headlights
       (if _high_beam_headlights (write-byte -1 s) (write-byte 0 s))
     ;; dbw_mkz_msgs/Wiper _wiper
       (send _wiper :serialize s)
     ;; dbw_mkz_msgs/AmbientLight _ambient_light
       (send _ambient_light :serialize s)
     ;; float32 _outside_temperature
       (sys::poke _outside_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _btn_cc_on
       (if _btn_cc_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_off
       (if _btn_cc_off (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_on_off
       (if _btn_cc_on_off (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_res
       (if _btn_cc_res (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_cncl
       (if _btn_cc_cncl (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_res_cncl
       (if _btn_cc_res_cncl (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_res_inc
       (if _btn_cc_res_inc (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_res_dec
       (if _btn_cc_res_dec (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_set_inc
       (if _btn_cc_set_inc (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_set_dec
       (if _btn_cc_set_dec (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_gap_inc
       (if _btn_cc_gap_inc (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_cc_gap_dec
       (if _btn_cc_gap_dec (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_la_on_off
       (if _btn_la_on_off (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_ld_ok
       (if _btn_ld_ok (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_ld_up
       (if _btn_ld_up (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_ld_down
       (if _btn_ld_down (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_ld_left
       (if _btn_ld_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_ld_right
       (if _btn_ld_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_rd_ok
       (if _btn_rd_ok (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_rd_up
       (if _btn_rd_up (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_rd_down
       (if _btn_rd_down (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_rd_left
       (if _btn_rd_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_rd_right
       (if _btn_rd_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_vol_inc
       (if _btn_vol_inc (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_vol_dec
       (if _btn_vol_dec (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_mute
       (if _btn_mute (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_media
       (if _btn_media (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_prev
       (if _btn_prev (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_next
       (if _btn_next (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_speak
       (if _btn_speak (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_call_start
       (if _btn_call_start (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn_call_end
       (if _btn_call_end (write-byte -1 s) (write-byte 0 s))
     ;; bool _fault_bus
       (if _fault_bus (write-byte -1 s) (write-byte 0 s))
     ;; bool _door_driver
       (if _door_driver (write-byte -1 s) (write-byte 0 s))
     ;; bool _door_passenger
       (if _door_passenger (write-byte -1 s) (write-byte 0 s))
     ;; bool _door_rear_left
       (if _door_rear_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _door_rear_right
       (if _door_rear_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _door_hood
       (if _door_hood (write-byte -1 s) (write-byte 0 s))
     ;; bool _door_trunk
       (if _door_trunk (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_detect
       (if _passenger_detect (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_airbag
       (if _passenger_airbag (write-byte -1 s) (write-byte 0 s))
     ;; bool _buckle_driver
       (if _buckle_driver (write-byte -1 s) (write-byte 0 s))
     ;; bool _buckle_passenger
       (if _buckle_passenger (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; dbw_mkz_msgs/TurnSignal _turn_signal
     (send _turn_signal :deserialize buf ptr-) (incf ptr- (send _turn_signal :serialization-length))
   ;; bool _high_beam_headlights
     (setq _high_beam_headlights (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; dbw_mkz_msgs/Wiper _wiper
     (send _wiper :deserialize buf ptr-) (incf ptr- (send _wiper :serialization-length))
   ;; dbw_mkz_msgs/AmbientLight _ambient_light
     (send _ambient_light :deserialize buf ptr-) (incf ptr- (send _ambient_light :serialization-length))
   ;; float32 _outside_temperature
     (setq _outside_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _btn_cc_on
     (setq _btn_cc_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_off
     (setq _btn_cc_off (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_on_off
     (setq _btn_cc_on_off (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_res
     (setq _btn_cc_res (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_cncl
     (setq _btn_cc_cncl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_res_cncl
     (setq _btn_cc_res_cncl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_res_inc
     (setq _btn_cc_res_inc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_res_dec
     (setq _btn_cc_res_dec (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_set_inc
     (setq _btn_cc_set_inc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_set_dec
     (setq _btn_cc_set_dec (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_gap_inc
     (setq _btn_cc_gap_inc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_cc_gap_dec
     (setq _btn_cc_gap_dec (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_la_on_off
     (setq _btn_la_on_off (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_ld_ok
     (setq _btn_ld_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_ld_up
     (setq _btn_ld_up (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_ld_down
     (setq _btn_ld_down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_ld_left
     (setq _btn_ld_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_ld_right
     (setq _btn_ld_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_rd_ok
     (setq _btn_rd_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_rd_up
     (setq _btn_rd_up (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_rd_down
     (setq _btn_rd_down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_rd_left
     (setq _btn_rd_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_rd_right
     (setq _btn_rd_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_vol_inc
     (setq _btn_vol_inc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_vol_dec
     (setq _btn_vol_dec (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_mute
     (setq _btn_mute (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_media
     (setq _btn_media (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_prev
     (setq _btn_prev (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_next
     (setq _btn_next (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_speak
     (setq _btn_speak (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_call_start
     (setq _btn_call_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn_call_end
     (setq _btn_call_end (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fault_bus
     (setq _fault_bus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _door_driver
     (setq _door_driver (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _door_passenger
     (setq _door_passenger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _door_rear_left
     (setq _door_rear_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _door_rear_right
     (setq _door_rear_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _door_hood
     (setq _door_hood (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _door_trunk
     (setq _door_trunk (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_detect
     (setq _passenger_detect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_airbag
     (setq _passenger_airbag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buckle_driver
     (setq _buckle_driver (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buckle_passenger
     (setq _buckle_passenger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dbw_mkz_msgs::Misc1Report :md5sum-) "551ea602464aaab22bc1752e844dde30")
(setf (get dbw_mkz_msgs::Misc1Report :datatype-) "dbw_mkz_msgs/Misc1Report")
(setf (get dbw_mkz_msgs::Misc1Report :definition-)
      "Header header

# Turn Signal enumeration
TurnSignal turn_signal

# High beams
bool high_beam_headlights

# Front Windshield Wipers enumeration
Wiper wiper

# Ambient Light Sensor enumeration
AmbientLight ambient_light

# Outside air temperature
float32 outside_temperature # Degrees Celsius

# Buttons
bool btn_cc_on        # Cruise Control On
bool btn_cc_off       # Cruise Control Off
bool btn_cc_on_off    # Cruise Control On/Off Toggle
bool btn_cc_res       # Cruise Control Resume
bool btn_cc_cncl      # Cruise Control Cancel
bool btn_cc_res_cncl  # Cruise Control Resume/Cancel
bool btn_cc_res_inc   # Cruise Control Resume+
bool btn_cc_res_dec   # Cruise Control Resume-
bool btn_cc_set_inc   # Cruise Control Set+
bool btn_cc_set_dec   # Cruise Control Set-
bool btn_cc_gap_inc   # Cruise Control Gap+
bool btn_cc_gap_dec   # Cruise Control Gap-
bool btn_la_on_off    # Lane Assist On/Off Toggle
bool btn_ld_ok        # Left D-Pad OK
bool btn_ld_up        # Left D-Pad Up
bool btn_ld_down      # Left D-Pad Down
bool btn_ld_left      # Left D-Pad Left
bool btn_ld_right     # Left D-Pad Right
bool btn_rd_ok        # Right D-Pad OK
bool btn_rd_up        # Right D-Pad Up
bool btn_rd_down      # Right D-Pad Down
bool btn_rd_left      # Right D-Pad Left
bool btn_rd_right     # Right D-Pad Right
bool btn_vol_inc      # Volume increment
bool btn_vol_dec      # Volume decrement
bool btn_mute         # Volume mute
bool btn_media        # Media (source)
bool btn_prev         # Media previous
bool btn_next         # Media next
bool btn_speak        # Speak
bool btn_call_start   # Call start/answer
bool btn_call_end     # Call end/disconnect

# Faults
bool fault_bus

# Doors
bool door_driver
bool door_passenger
bool door_rear_left
bool door_rear_right
bool door_hood
bool door_trunk

# Passenger seat
bool passenger_detect
bool passenger_airbag

# Seat Belts
bool buckle_driver
bool buckle_passenger

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
MSG: dbw_mkz_msgs/TurnSignal
uint8 value

uint8 NONE=0
uint8 LEFT=1
uint8 RIGHT=2

================================================================================
MSG: dbw_mkz_msgs/Wiper
uint8 status

uint8 OFF=0
uint8 AUTO_OFF=1
uint8 OFF_MOVING=2
uint8 MANUAL_OFF=3
uint8 MANUAL_ON=4
uint8 MANUAL_LOW=5
uint8 MANUAL_HIGH=6
uint8 MIST_FLICK=7
uint8 WASH=8
uint8 AUTO_LOW=9
uint8 AUTO_HIGH=10
uint8 COURTESYWIPE=11
uint8 AUTO_ADJUST=12
uint8 RESERVED=13
uint8 STALLED=14
uint8 NO_DATA=15

================================================================================
MSG: dbw_mkz_msgs/AmbientLight
uint8 status

uint8 DARK=0
uint8 LIGHT=1
uint8 TWILIGHT=2
uint8 TUNNEL_ON=3
uint8 TUNNEL_OFF=4
uint8 NO_DATA=7

")



(provide :dbw_mkz_msgs/Misc1Report "551ea602464aaab22bc1752e844dde30")


