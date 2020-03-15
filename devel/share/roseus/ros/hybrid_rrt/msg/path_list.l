;; Auto-generated. Do not edit!


(when (boundp 'hybrid_rrt::path_list)
  (if (not (find-package "HYBRID_RRT"))
    (make-package "HYBRID_RRT"))
  (shadow 'path_list (find-package "HYBRID_RRT")))
(unless (find-package "HYBRID_RRT::PATH_LIST")
  (make-package "HYBRID_RRT::PATH_LIST"))

(in-package "ROS")
;;//! \htmlinclude path_list.msg.html


(defclass hybrid_rrt::path_list
  :super ros::object
  :slots (_path ))

(defmethod hybrid_rrt::path_list
  (:init
   (&key
    ((:path __path) (let (r) (dotimes (i 0) (push (instance hybrid_rrt::path_point :init) r)) r))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; hybrid_rrt/path_point[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hybrid_rrt/path_point[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hybrid_rrt/path_point[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance hybrid_rrt::path_point :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hybrid_rrt::path_list :md5sum-) "11f32201945158a1dde087b80a756425")
(setf (get hybrid_rrt::path_list :datatype-) "hybrid_rrt/path_list")
(setf (get hybrid_rrt::path_list :definition-)
      "path_point[] path

================================================================================
MSG: hybrid_rrt/path_point
float64 x
float64 y
float64 yaw
int32 dir

")



(provide :hybrid_rrt/path_list "11f32201945158a1dde087b80a756425")


