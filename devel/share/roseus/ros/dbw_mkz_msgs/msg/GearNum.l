;; Auto-generated. Do not edit!


(when (boundp 'dbw_mkz_msgs::GearNum)
  (if (not (find-package "DBW_MKZ_MSGS"))
    (make-package "DBW_MKZ_MSGS"))
  (shadow 'GearNum (find-package "DBW_MKZ_MSGS")))
(unless (find-package "DBW_MKZ_MSGS::GEARNUM")
  (make-package "DBW_MKZ_MSGS::GEARNUM"))

(in-package "ROS")
;;//! \htmlinclude GearNum.msg.html


(intern "*NONE*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*NONE* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*NONE* 0)
(intern "*DRIVE_D01*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D01* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D01* 1)
(intern "*DRIVE_D02*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D02* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D02* 2)
(intern "*DRIVE_D03*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D03* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D03* 3)
(intern "*DRIVE_D04*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D04* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D04* 4)
(intern "*DRIVE_D05*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D05* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D05* 5)
(intern "*DRIVE_D06*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D06* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D06* 6)
(intern "*DRIVE_D07*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D07* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D07* 7)
(intern "*DRIVE_D08*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D08* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D08* 8)
(intern "*DRIVE_D09*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D09* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D09* 9)
(intern "*DRIVE_D10*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*DRIVE_D10* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*DRIVE_D10* 10)
(intern "*NEUTRAL*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*NEUTRAL* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*NEUTRAL* 16)
(intern "*REVERSE_R01*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*REVERSE_R01* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*REVERSE_R01* 17)
(intern "*REVERSE_R02*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*REVERSE_R02* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*REVERSE_R02* 18)
(intern "*PARK*" (find-package "DBW_MKZ_MSGS::GEARNUM"))
(shadow '*PARK* (find-package "DBW_MKZ_MSGS::GEARNUM"))
(defconstant dbw_mkz_msgs::GearNum::*PARK* 31)
(defclass dbw_mkz_msgs::GearNum
  :super ros::object
  :slots (_num ))

(defmethod dbw_mkz_msgs::GearNum
  (:init
   (&key
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _num (round __num))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; uint8 _num
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _num
       (write-byte _num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _num
     (setq _num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dbw_mkz_msgs::GearNum :md5sum-) "796cf18912e88e9df4c9f138d09f2700")
(setf (get dbw_mkz_msgs::GearNum :datatype-) "dbw_mkz_msgs/GearNum")
(setf (get dbw_mkz_msgs::GearNum :definition-)
      "uint8 num

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



(provide :dbw_mkz_msgs/GearNum "796cf18912e88e9df4c9f138d09f2700")


