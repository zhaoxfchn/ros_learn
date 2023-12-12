;; Auto-generated. Do not edit!


(when (boundp 'plumbing_server_client::add_init)
  (if (not (find-package "PLUMBING_SERVER_CLIENT"))
    (make-package "PLUMBING_SERVER_CLIENT"))
  (shadow 'add_init (find-package "PLUMBING_SERVER_CLIENT")))
(unless (find-package "PLUMBING_SERVER_CLIENT::ADD_INIT")
  (make-package "PLUMBING_SERVER_CLIENT::ADD_INIT"))
(unless (find-package "PLUMBING_SERVER_CLIENT::ADD_INITREQUEST")
  (make-package "PLUMBING_SERVER_CLIENT::ADD_INITREQUEST"))
(unless (find-package "PLUMBING_SERVER_CLIENT::ADD_INITRESPONSE")
  (make-package "PLUMBING_SERVER_CLIENT::ADD_INITRESPONSE"))

(in-package "ROS")





(defclass plumbing_server_client::add_initRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod plumbing_server_client::add_initRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_client::add_initResponse
  :super ros::object
  :slots (_sum ))

(defmethod plumbing_server_client::add_initResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_client::add_init
  :super ros::object
  :slots ())

(setf (get plumbing_server_client::add_init :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_client::add_init :datatype-) "plumbing_server_client/add_init")
(setf (get plumbing_server_client::add_init :request) plumbing_server_client::add_initRequest)
(setf (get plumbing_server_client::add_init :response) plumbing_server_client::add_initResponse)

(defmethod plumbing_server_client::add_initRequest
  (:response () (instance plumbing_server_client::add_initResponse :init)))

(setf (get plumbing_server_client::add_initRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_client::add_initRequest :datatype-) "plumbing_server_client/add_initRequest")
(setf (get plumbing_server_client::add_initRequest :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum


")

(setf (get plumbing_server_client::add_initResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_client::add_initResponse :datatype-) "plumbing_server_client/add_initResponse")
(setf (get plumbing_server_client::add_initResponse :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum


")



(provide :plumbing_server_client/add_init "4781436a0c2affec8025955a6041e481")


