;; groveller file

(in-package #:eazy-opencl.bindings)

(include "CL/cl_platform.h")

;;; C.1 Shared Application Scalar Data Types

(ctype #.(lispify "cl_char") "cl_char")
(ctype #.(lispify "cl_uchar") "cl_uchar")
(ctype #.(lispify "cl_short") "cl_short")
(ctype #.(lispify "cl_ushort") "cl_ushort")
(ctype #.(lispify "cl_int") "cl_int")
(ctype #.(lispify "cl_uint") "cl_uint")
(ctype #.(lispify "cl_long") "cl_long")
(ctype #.(lispify "cl_ulong") "cl_ulong")
(ctype #.(lispify "cl_half") "cl_half")
(ctype #.(lispify "cl_float") "cl_float")
(ctype #.(lispify "cl_double") "cl_double")

;;; C.2 Supported Application Vector Data Types

;; (ctype #.(lispify "cl_char2") "cl_char2")
;; (ctype #.(lispify "cl_uchar2") "cl_uchar2")
;; (ctype #.(lispify "cl_short2") "cl_short2")
;; (ctype #.(lispify "cl_ushort2") "cl_ushort2")
;; (ctype #.(lispify "cl_int2") "cl_int2")
;; (ctype #.(lispify "cl_uint2") "cl_uint2")
;; (ctype #.(lispify "cl_long2") "cl_long2")
;; (ctype #.(lispify "cl_ulong2") "cl_ulong2")
;; (ctype #.(lispify "cl_half2") "cl_half2")
;; (ctype #.(lispify "cl_float2") "cl_float2")
;; (ctype #.(lispify "cl_double2") "cl_double2")
;; 
;; (ctype #.(lispify "cl_char3") "cl_char3")
;; (ctype #.(lispify "cl_uchar3") "cl_uchar3")
;; (ctype #.(lispify "cl_short3") "cl_short3")
;; (ctype #.(lispify "cl_ushort3") "cl_ushort3")
;; (ctype #.(lispify "cl_int3") "cl_int3")
;; (ctype #.(lispify "cl_uint3") "cl_uint3")
;; (ctype #.(lispify "cl_long3") "cl_long3")
;; (ctype #.(lispify "cl_ulong3") "cl_ulong3")
;; (ctype #.(lispify "cl_half3") "cl_half3")
;; (ctype #.(lispify "cl_float3") "cl_float3")
;; (ctype #.(lispify "cl_double3") "cl_double3")
;; 
;; (ctype #.(lispify "cl_char4") "cl_char4")
;; (ctype #.(lispify "cl_uchar4") "cl_uchar4")
;; (ctype #.(lispify "cl_short4") "cl_short4")
;; (ctype #.(lispify "cl_ushort4") "cl_ushort4")
;; (ctype #.(lispify "cl_int4") "cl_int4")
;; (ctype #.(lispify "cl_uint4") "cl_uint4")
;; (ctype #.(lispify "cl_long4") "cl_long4")
;; (ctype #.(lispify "cl_ulong4") "cl_ulong4")
;; (ctype #.(lispify "cl_half4") "cl_half4")
;; (ctype #.(lispify "cl_float4") "cl_float4")
;; (ctype #.(lispify "cl_double4") "cl_double4")
;; 
;; (ctype #.(lispify "cl_char8") "cl_char8")
;; (ctype #.(lispify "cl_uchar8") "cl_uchar8")
;; (ctype #.(lispify "cl_short8") "cl_short8")
;; (ctype #.(lispify "cl_ushort8") "cl_ushort8")
;; (ctype #.(lispify "cl_int8") "cl_int8")
;; (ctype #.(lispify "cl_uint8") "cl_uint8")
;; (ctype #.(lispify "cl_long8") "cl_long8")
;; (ctype #.(lispify "cl_ulong8") "cl_ulong8")
;; (ctype #.(lispify "cl_half8") "cl_half8")
;; (ctype #.(lispify "cl_float8") "cl_float8")
;; (ctype #.(lispify "cl_double8") "cl_double8")
;; 
;; (ctype #.(lispify "cl_char16") "cl_char16")
;; (ctype #.(lispify "cl_uchar16") "cl_uchar16")
;; (ctype #.(lispify "cl_short16") "cl_short16")
;; (ctype #.(lispify "cl_ushort16") "cl_ushort16")
;; (ctype #.(lispify "cl_int16") "cl_int16")
;; (ctype #.(lispify "cl_uint16") "cl_uint16")
;; (ctype #.(lispify "cl_long16") "cl_long16")
;; (ctype #.(lispify "cl_ulong16") "cl_ulong16")
;; (ctype #.(lispify "cl_half16") "cl_half16")
;; (ctype #.(lispify "cl_float16") "cl_float16")
;; (ctype #.(lispify "cl_double16") "cl_double16")

;;; C.9 Application constant definitions


(constant (#.(lispify "CL_CHAR_BIT" :constant) "CL_CHAR_BIT"))
(constant (#.(lispify "CL_SCHAR_MAX" :constant) "CL_SCHAR_MAX"))
(constant (#.(lispify "CL_SCHAR_MIN" :constant) "CL_SCHAR_MIN"))
(constant (#.(lispify "CL_CHAR_MAX" :constant) "CL_CHAR_MAX"))
(constant (#.(lispify "CL_CHAR_MIN" :constant) "CL_CHAR_MIN"))
(constant (#.(lispify "CL_UCHAR_MAX" :constant) "CL_UCHAR_MAX"))
(constant (#.(lispify "CL_SHRT_MAX" :constant) "CL_SHRT_MAX"))
(constant (#.(lispify "CL_SHRT_MIN" :constant) "CL_SHRT_MIN"))
(constant (#.(lispify "CL_USHRT_MAX" :constant) "CL_USHRT_MAX"))
(constant (#.(lispify "CL_INT_MAX" :constant) "CL_INT_MAX"))
(constant (#.(lispify "CL_INT_MIN" :constant) "CL_INT_MIN"))
(constant (#.(lispify "CL_UINT_MAX" :constant) "CL_UINT_MAX"))
(constant (#.(lispify "CL_LONG_MAX" :constant) "CL_LONG_MAX"))
(constant (#.(lispify "CL_LONG_MIN" :constant) "CL_LONG_MIN"))
(constant (#.(lispify "CL_ULONG_MAX" :constant) "CL_ULONG_MAX"))
(constant (#.(lispify "CL_FLT_DIG" :constant) "CL_FLT_DIG"))
(constant (#.(lispify "CL_FLT_MANT_DIG" :constant) "CL_FLT_MANT_DIG"))
(constant (#.(lispify "CL_FLT_MAX_10_EXP" :constant) "CL_FLT_MAX_10_EXP"))
(constant (#.(lispify "CL_FLT_MAX_EXP" :constant) "CL_FLT_MAX_EXP"))
(constant (#.(lispify "CL_FLT_MIN_10_EXP" :constant) "CL_FLT_MIN_10_EXP"))
(constant (#.(lispify "CL_FLT_MIN_EXP" :constant) "CL_FLT_MIN_EXP"))
(constant (#.(lispify "CL_FLT_RADIX" :constant) "CL_FLT_RADIX"))
(constant (#.(lispify "CL_FLT_MAX" :constant) "CL_FLT_MAX"))
(constant (#.(lispify "CL_FLT_MIN" :constant) "CL_FLT_MIN"))
(constant (#.(lispify "CL_FLT_EPSILON" :constant) "CL_FLT_EPSILON"))
(constant (#.(lispify "CL_DBL_DIG" :constant) "CL_DBL_DIG"))
(constant (#.(lispify "CL_DBL_MANT_DIG" :constant) "CL_DBL_MANT_DIG"))
(constant (#.(lispify "CL_DBL_MAX_10_EXP" :constant) "CL_DBL_MAX_10_EXP"))
(constant (#.(lispify "CL_DBL_MAX_EXP" :constant) "CL_DBL_MAX_EXP"))
(constant (#.(lispify "CL_DBL_MIN_10_EXP" :constant) "CL_DBL_MIN_10_EXP"))
(constant (#.(lispify "CL_DBL_MIN_EXP" :constant) "CL_DBL_MIN_EXP"))
(constant (#.(lispify "CL_DBL_RADIX" :constant) "CL_DBL_RADIX"))
(constant (#.(lispify "CL_DBL_MAX" :constant) "CL_DBL_MAX"))
(constant (#.(lispify "CL_DBL_MIN" :constant) "CL_DBL_MIN"))
(constant (#.(lispify "CL_DBL_EPSILON" :constant) "CL_DBL_EPSILON"))
(constant (#.(lispify "CL_NAN" :constant) "CL_NAN"))
(constant (#.(lispify "CL_HUGE_VALF" :constant) "CL_HUGE_VALF"))
(constant (#.(lispify "CL_HUGE_VAL" :constant) "CL_HUGE_VAL"))
(constant (#.(lispify "CL_MAXFLOAT" :constant) "CL_MAXFLOAT"))
(constant (#.(lispify "CL_INFINITY" :constant) "CL_INFINITY"))

