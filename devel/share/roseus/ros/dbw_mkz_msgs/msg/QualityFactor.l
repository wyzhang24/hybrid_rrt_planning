;; Auto-generated. Do not edit!


(when (boundp 'dbw_mkz_msgs::QualityFactor)
  (if (not (find-package "DBW_MKZ_MSGS"))
    (make-package "DBW_MKZ_MSGS"))
  (shadow 'QualityFactor (find-package "DBW_MKZ_MSGS")))
(unless (find-package "DBW_MKZ_MSGS::QUALITYFACTOR")
  (make-package "DBW_MKZ_MSGS::QUALITYFACTOR"))

(in-package "ROS")
;;//! \htmlinclude QualityFactor.msg.html


(intern "*OK*" (find-package "DBW_MKZ_MSGS::QUALITYFACTOR"))
(shadow '*OK* (find-package "DBW_MKZ_MSGS::QUALITYFACTOR"))
(defconstant dbw_mkz_msgs::QualityFactor::*OK* 0)
(intern "*EMPTY*" (find-package "DBW_MKZ_MSGS::QUALITYFACTOR"))
(shadow '*EMPTY* (find-package "DBW_MKZ_MSGS::QUALITYFACTOR"))
(defconstant dbw_mkz_msgs::QualityFactor::*EMPTY* 1)
(intern "*CORRUPT*" (find-package "DBW_MKZ_MSGS::QUALITYFACTOR"))
(shadow '*CORRUPT* (find-package "DBW_MKZ_MSGS::QUALITYFACTOR"))
(defconstant dbw_mkz_msgs::QualityFactor::*CORRUPT* 2)
(intern "*FAULT*" (find-package "DBW_MKZ_MSGS::QUALITYFACTOR"))
(shadow '*FAULT* (find-package "DBW_MKZ_MSGS::QUALITYFACTOR"))
(defconstant dbw_mkz_msgs::QualityFactor::*FAULT* 3)
(defclass dbw_mkz_msgs::QualityFactor
  :super ros::object
  :slots (_value ))

(defmethod dbw_mkz_msgs::QualityFactor
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dbw_mkz_msgs::QualityFactor :md5sum-) "e016f2e62eedbf749ab8c93a8c2f786f")
(setf (get dbw_mkz_msgs::QualityFactor :datatype-) "dbw_mkz_msgs/QualityFactor")
(setf (get dbw_mkz_msgs::QualityFactor :definition-)
      "uint8 value

uint8 OK=0
uint8 EMPTY=1
uint8 CORRUPT=2
uint8 FAULT=3

")



(provide :dbw_mkz_msgs/QualityFactor "e016f2e62eedbf749ab8c93a8c2f786f")


