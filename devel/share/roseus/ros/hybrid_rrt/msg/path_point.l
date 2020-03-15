;; Auto-generated. Do not edit!


(when (boundp 'hybrid_rrt::path_point)
  (if (not (find-package "HYBRID_RRT"))
    (make-package "HYBRID_RRT"))
  (shadow 'path_point (find-package "HYBRID_RRT")))
(unless (find-package "HYBRID_RRT::PATH_POINT")
  (make-package "HYBRID_RRT::PATH_POINT"))

(in-package "ROS")
;;//! \htmlinclude path_point.msg.html


(defclass hybrid_rrt::path_point
  :super ros::object
  :slots (_x _y _yaw _dir ))

(defmethod hybrid_rrt::path_point
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    ((:dir __dir) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   (setq _dir (round __dir))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _yaw
    8
    ;; int32 _dir
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _dir
       (write-long _dir s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _dir
     (setq _dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hybrid_rrt::path_point :md5sum-) "cb915744e92a8a80ee68cb28baacef20")
(setf (get hybrid_rrt::path_point :datatype-) "hybrid_rrt/path_point")
(setf (get hybrid_rrt::path_point :definition-)
      "float64 x
float64 y
float64 yaw
int32 dir

")



(provide :hybrid_rrt/path_point "cb915744e92a8a80ee68cb28baacef20")


