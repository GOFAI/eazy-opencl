(in-package :%ocl/u)

(defpackage :eazy-opencl.grovel
  (:use :cffi :%ocl/u)
  (:nicknames :%ocl/g)
  ;; C.1 shared application scalar data types
  #.(list
     :export
     (lispify-wo-prefix "CL_CHAR")
     (lispify-wo-prefix "CL_UCHAR")
     (lispify-wo-prefix "CL_SHORT")
     (lispify-wo-prefix "CL_USHORT")
     (lispify-wo-prefix "CL_INT")
     (lispify-wo-prefix "CL_UINT")
     (lispify-wo-prefix "CL_LONG")
     (lispify-wo-prefix "CL_ULONG")
     (lispify-wo-prefix "CL_HALF")
     (lispify-wo-prefix "CL_FLOAT")
     (lispify-wo-prefix "CL_DOUBLE"))
  ;; C.2 supported application vector data types
  #.(list
     :export
     (lispify-wo-prefix "CL_CHAR2")
     (lispify-wo-prefix "CL_UCHAR2")
     (lispify-wo-prefix "CL_SHORT2")
     (lispify-wo-prefix "CL_USHORT2")
     (lispify-wo-prefix "CL_INT2")
     (lispify-wo-prefix "CL_UINT2")
     (lispify-wo-prefix "CL_LONG2")
     (lispify-wo-prefix "CL_ULONG2")
     (lispify-wo-prefix "CL_HALF2")
     (lispify-wo-prefix "CL_FLOAT2")
     (lispify-wo-prefix "CL_DOUBLE2")
     
     (lispify-wo-prefix "CL_CHAR3")
     (lispify-wo-prefix "CL_UCHAR3")
     (lispify-wo-prefix "CL_SHORT3")
     (lispify-wo-prefix "CL_USHORT3")
     (lispify-wo-prefix "CL_INT3")
     (lispify-wo-prefix "CL_UINT3")
     (lispify-wo-prefix "CL_LONG3")
     (lispify-wo-prefix "CL_ULONG3")
     (lispify-wo-prefix "CL_HALF3")
     (lispify-wo-prefix "CL_FLOAT3")
     (lispify-wo-prefix "CL_DOUBLE3")
     
     (lispify-wo-prefix "CL_CHAR4")
     (lispify-wo-prefix "CL_UCHAR4")
     (lispify-wo-prefix "CL_SHORT4")
     (lispify-wo-prefix "CL_USHORT4")
     (lispify-wo-prefix "CL_INT4")
     (lispify-wo-prefix "CL_UINT4")
     (lispify-wo-prefix "CL_LONG4")
     (lispify-wo-prefix "CL_ULONG4")
     (lispify-wo-prefix "CL_HALF4")
     (lispify-wo-prefix "CL_FLOAT4")
     (lispify-wo-prefix "CL_DOUBLE4")
     
     (lispify-wo-prefix "CL_CHAR8")
     (lispify-wo-prefix "CL_UCHAR8")
     (lispify-wo-prefix "CL_SHORT8")
     (lispify-wo-prefix "CL_USHORT8")
     (lispify-wo-prefix "CL_INT8")
     (lispify-wo-prefix "CL_UINT8")
     (lispify-wo-prefix "CL_LONG8")
     (lispify-wo-prefix "CL_ULONG8")
     (lispify-wo-prefix "CL_HALF8")
     (lispify-wo-prefix "CL_FLOAT8")
     (lispify-wo-prefix "CL_DOUBLE8")
     
     (lispify-wo-prefix "CL_CHAR16")
     (lispify-wo-prefix "CL_UCHAR16")
     (lispify-wo-prefix "CL_SHORT16")
     (lispify-wo-prefix "CL_USHORT16")
     (lispify-wo-prefix "CL_INT16")
     (lispify-wo-prefix "CL_UINT16")
     (lispify-wo-prefix "CL_LONG16")
     (lispify-wo-prefix "CL_ULONG16")
     (lispify-wo-prefix "CL_HALF16")
     (lispify-wo-prefix "CL_FLOAT16")
     (lispify-wo-prefix "CL_DOUBLE16")

     (lispify-wo-prefix "CL_CHAR_BIT" :constant)
     (lispify-wo-prefix "CL_SCHAR_MAX" :constant)
     (lispify-wo-prefix "CL_SCHAR_MIN" :constant)
     (lispify-wo-prefix "CL_CHAR_MAX" :constant)
     (lispify-wo-prefix "CL_CHAR_MIN" :constant)
     (lispify-wo-prefix "CL_UCHAR_MAX" :constant)
     (lispify-wo-prefix "CL_SHRT_MAX" :constant)
     (lispify-wo-prefix "CL_SHRT_MIN" :constant)
     (lispify-wo-prefix "CL_USHRT_MAX" :constant)
     (lispify-wo-prefix "CL_INT_MAX" :constant)
     (lispify-wo-prefix "CL_INT_MIN" :constant)
     (lispify-wo-prefix "CL_UINT_MAX" :constant)
     (lispify-wo-prefix "CL_LONG_MAX" :constant)
     (lispify-wo-prefix "CL_LONG_MIN" :constant)
     (lispify-wo-prefix "CL_ULONG_MAX" :constant)
     (lispify-wo-prefix "CL_FLT_DIG" :constant)
     (lispify-wo-prefix "CL_FLT_MANT_DIG" :constant)
     (lispify-wo-prefix "CL_FLT_MAX_10_EXP" :constant)
     (lispify-wo-prefix "CL_FLT_MAX_EXP" :constant)
     (lispify-wo-prefix "CL_FLT_MIN_10_EXP" :constant)
     (lispify-wo-prefix "CL_FLT_MIN_EXP" :constant)
     (lispify-wo-prefix "CL_FLT_RADIX" :constant)
     (lispify-wo-prefix "CL_FLT_MAX" :constant)
     (lispify-wo-prefix "CL_FLT_MIN" :constant)
     (lispify-wo-prefix "CL_FLT_EPSILON" :constant)
     (lispify-wo-prefix "CL_DBL_DIG" :constant)
     (lispify-wo-prefix "CL_DBL_MANT_DIG" :constant)
     (lispify-wo-prefix "CL_DBL_MAX_10_EXP" :constant)
     (lispify-wo-prefix "CL_DBL_MAX_EXP" :constant)
     (lispify-wo-prefix "CL_DBL_MIN_10_EXP" :constant)
     (lispify-wo-prefix "CL_DBL_MIN_EXP" :constant)
     (lispify-wo-prefix "CL_DBL_RADIX" :constant)
     (lispify-wo-prefix "CL_DBL_MAX" :constant)
     (lispify-wo-prefix "CL_DBL_MIN" :constant)
     (lispify-wo-prefix "CL_DBL_EPSILON" :constant)
     (lispify-wo-prefix "CL_NAN" :constant)
     (lispify-wo-prefix "CL_HUGE_VALF" :constant)
     (lispify-wo-prefix "CL_HUGE_VAL" :constant)
     (lispify-wo-prefix "CL_MAXFLOAT" :constant)
     (lispify-wo-prefix "CL_INFINITY" :constant))
  ;; grovel-cl
  #.(list
     :export
     (lispify "intptr_t")
     (lispify "uintptr_t")
     (lispify "size_t")
     (lispify "ptrdiff_t")

     (lispify "platform_id")
     (lispify "__device_id")
     (lispify "__context")
     (lispify "__command_queue")
     (lispify "__mem")
     (lispify "__program")
     (lispify "__kernel")
     (lispify "__event")
     (lispify "__sampler")
     (lispify "__bool")
     (lispify "bitfield")
     (lispify "device_type")
     (lispify "platform_info")
     (lispify "device_info")
     (lispify "device_fp_config")
     (lispify "device_mem_cache_type")
     (lispify "device_local_mem_type")
     (lispify "device_exec_capabilities")
     #+opencl-2.0
     (lispify "device_svm_capabilities")
     (lispify "command_queue_properties")
     (lispify "device_partition_property")
     (lispify "device_affinity_domain")
     (lispify "context_properties")
     (lispify "context_info")
     #+opencl-2.0
     (lispify "queue_properties")
     (lispify "command_queue_info")
     (lispify "channel_order")
     (lispify "channel_type")
     (lispify "mem_flags")
     #+opencl-2.0
     (lispify "svm_mem_flags")
     (lispify "mem_object_type")
     (lispify "mem_info")
     (lispify "mem_migration_flags")
     (lispify "image_info")
     (lispify "buffer_create_type")
     (lispify "addressing_mode")
     (lispify "filter_mode")
     (lispify "sampler_info")
     (lispify "map_flags")
     #+opencl-2.0
     (lispify "pipe_properties")
     #+opencl-2.0
     (lispify "pipe_info")
     (lispify "program_info")
     (lispify "program_build_info")
     (lispify "program_binary_type")
     (lispify "build_status")
     (lispify "kernel_info")
     (lispify "kernel_arg_info")
     (lispify "kernel_arg_address_qualifier")
     (lispify "kernel_arg_access_qualifier")
     (lispify "kernel_arg_type_qualifier")
     (lispify "kernel_work_group_info")
     #+opencl-2.1
     (lispify "kernel_sub_group_info")
     (lispify "event_info")
     (lispify "command_type")
     (lispify "profiling_info")
     #+opencl-2.0
     (lispify "sampler_properties")
     #+opencl-2.0
     (lispify "kernel_exec_info"))
  #.(list
     :export
     :--error-code
     (lispify-wo-prefix "CL_SUCCESS")
     (lispify-wo-prefix "CL_DEVICE_NOT_FOUND")
     (lispify-wo-prefix "CL_DEVICE_NOT_AVAILABLE")
     (lispify-wo-prefix "CL_COMPILER_NOT_AVAILABLE")
     (lispify-wo-prefix "CL_MEM_OBJECT_ALLOCATION_FAILURE")
     (lispify-wo-prefix "CL_OUT_OF_RESOURCES")
     (lispify-wo-prefix "CL_OUT_OF_HOST_MEMORY")
     (lispify-wo-prefix "CL_PROFILING_INFO_NOT_AVAILABLE")
     (lispify-wo-prefix "CL_MEM_COPY_OVERLAP")
     (lispify-wo-prefix "CL_IMAGE_FORMAT_MISMATCH")
     (lispify-wo-prefix "CL_IMAGE_FORMAT_NOT_SUPPORTED")
     (lispify-wo-prefix "CL_BUILD_PROGRAM_FAILURE")
     (lispify-wo-prefix "CL_MAP_FAILURE")
     (lispify-wo-prefix "CL_MISALIGNED_SUB_BUFFER_OFFSET")
     (lispify-wo-prefix "CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST")
     (lispify-wo-prefix "CL_COMPILE_PROGRAM_FAILURE")
     (lispify-wo-prefix "CL_LINKER_NOT_AVAILABLE")
     (lispify-wo-prefix "CL_LINK_PROGRAM_FAILURE")
     (lispify-wo-prefix "CL_DEVICE_PARTITION_FAILED")
     (lispify-wo-prefix "CL_KERNEL_ARG_INFO_NOT_AVAILABLE")
     (lispify-wo-prefix "CL_INVALID_VALUE")
     (lispify-wo-prefix "CL_INVALID_DEVICE_TYPE")
     (lispify-wo-prefix "CL_INVALID_PLATFORM")
     (lispify-wo-prefix "CL_INVALID_DEVICE")
     (lispify-wo-prefix "CL_INVALID_CONTEXT")
     (lispify-wo-prefix "CL_INVALID_QUEUE_PROPERTIES")
     (lispify-wo-prefix "CL_INVALID_COMMAND_QUEUE")
     (lispify-wo-prefix "CL_INVALID_HOST_PTR")
     (lispify-wo-prefix "CL_INVALID_MEM_OBJECT")
     (lispify-wo-prefix "CL_INVALID_IMAGE_FORMAT_DESCRIPTOR")
     (lispify-wo-prefix "CL_INVALID_IMAGE_SIZE")
     (lispify-wo-prefix "CL_INVALID_SAMPLER")
     (lispify-wo-prefix "CL_INVALID_BINARY")
     (lispify-wo-prefix "CL_INVALID_BUILD_OPTIONS")
     (lispify-wo-prefix "CL_INVALID_PROGRAM")
     (lispify-wo-prefix "CL_INVALID_PROGRAM_EXECUTABLE")
     (lispify-wo-prefix "CL_INVALID_KERNEL_NAME")
     (lispify-wo-prefix "CL_INVALID_KERNEL_DEFINITION")
     (lispify-wo-prefix "CL_INVALID_KERNEL")
     (lispify-wo-prefix "CL_INVALID_ARG_INDEX")
     (lispify-wo-prefix "CL_INVALID_ARG_VALUE")
     (lispify-wo-prefix "CL_INVALID_ARG_SIZE")
     (lispify-wo-prefix "CL_INVALID_KERNEL_ARGS")
     (lispify-wo-prefix "CL_INVALID_WORK_DIMENSION")
     (lispify-wo-prefix "CL_INVALID_WORK_GROUP_SIZE")
     (lispify-wo-prefix "CL_INVALID_WORK_ITEM_SIZE")
     (lispify-wo-prefix "CL_INVALID_GLOBAL_OFFSET")
     (lispify-wo-prefix "CL_INVALID_EVENT_WAIT_LIST")
     (lispify-wo-prefix "CL_INVALID_EVENT")
     (lispify-wo-prefix "CL_INVALID_OPERATION")
     (lispify-wo-prefix "CL_INVALID_GL_OBJECT")
     (lispify-wo-prefix "CL_INVALID_BUFFER_SIZE")
     (lispify-wo-prefix "CL_INVALID_MIP_LEVEL")
     (lispify-wo-prefix "CL_INVALID_GLOBAL_WORK_SIZE")
     (lispify-wo-prefix "CL_INVALID_PROPERTY")
     (lispify-wo-prefix "CL_INVALID_IMAGE_DESCRIPTOR")
     (lispify-wo-prefix "CL_INVALID_COMPILER_OPTIONS")
     (lispify-wo-prefix "CL_INVALID_LINKER_OPTIONS")
     (lispify-wo-prefix "CL_INVALID_DEVICE_PARTITION_COUNT")
     (lispify-wo-prefix "CL_INVALID_PIPE_SIZE")
     (lispify-wo-prefix "CL_INVALID_DEVICE_QUEUE")

     (lispify-wo-prefix "CL_FALSE")
     (lispify-wo-prefix "CL_TRUE")
     (lispify-wo-prefix "CL_BLOCKING")
     (lispify-wo-prefix "CL_NON_BLOCKING")

     (lispify "platform_info")
     (lispify-wo-prefix "CL_PLATFORM_PROFILE")
     (lispify-wo-prefix "CL_PLATFORM_VERSION")
     (lispify-wo-prefix "CL_PLATFORM_NAME")
     (lispify-wo-prefix "CL_PLATFORM_VENDOR")
     (lispify-wo-prefix "CL_PLATFORM_EXTENSIONS")

     (lispify "device_type")
     (lispify-wo-prefix "CL_DEVICE_TYPE_DEFAULT")
     (lispify-wo-prefix "CL_DEVICE_TYPE_CPU")
     (lispify-wo-prefix "CL_DEVICE_TYPE_GPU")
     (lispify-wo-prefix "CL_DEVICE_TYPE_ACCELERATOR")
     (lispify-wo-prefix "CL_DEVICE_TYPE_CUSTOM")
     (lispify-wo-prefix "CL_DEVICE_TYPE_ALL")

     (lispify "device_info")
     (lispify-wo-prefix "CL_DEVICE_TYPE")
     (lispify-wo-prefix "CL_DEVICE_VENDOR_ID")
     (lispify-wo-prefix "CL_DEVICE_MAX_COMPUTE_UNITS")
     (lispify-wo-prefix "CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS")
     (lispify-wo-prefix "CL_DEVICE_MAX_WORK_GROUP_SIZE")
     (lispify-wo-prefix "CL_DEVICE_MAX_WORK_ITEM_SIZES")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE")
     (lispify-wo-prefix "CL_DEVICE_MAX_CLOCK_FREQUENCY")
     (lispify-wo-prefix "CL_DEVICE_ADDRESS_BITS")
     (lispify-wo-prefix "CL_DEVICE_MAX_READ_IMAGE_ARGS")
     (lispify-wo-prefix "CL_DEVICE_MAX_WRITE_IMAGE_ARGS")
     (lispify-wo-prefix "CL_DEVICE_MAX_MEM_ALLOC_SIZE")
     (lispify-wo-prefix "CL_DEVICE_IMAGE2D_MAX_WIDTH")
     (lispify-wo-prefix "CL_DEVICE_IMAGE2D_MAX_HEIGHT")
     (lispify-wo-prefix "CL_DEVICE_IMAGE3D_MAX_WIDTH")
     (lispify-wo-prefix "CL_DEVICE_IMAGE3D_MAX_HEIGHT")
     (lispify-wo-prefix "CL_DEVICE_IMAGE3D_MAX_DEPTH")
     (lispify-wo-prefix "CL_DEVICE_IMAGE_SUPPORT")
     (lispify-wo-prefix "CL_DEVICE_MAX_PARAMETER_SIZE")
     (lispify-wo-prefix "CL_DEVICE_MAX_SAMPLERS")
     (lispify-wo-prefix "CL_DEVICE_MEM_BASE_ADDR_ALIGN")
     ;; #-opencl-1.2
     (lispify-wo-prefix "CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE")
     (lispify-wo-prefix "CL_DEVICE_SINGLE_FP_CONFIG")
     (lispify-wo-prefix "CL_DEVICE_GLOBAL_MEM_CACHE_TYPE")
     (lispify-wo-prefix "CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE")
     (lispify-wo-prefix "CL_DEVICE_GLOBAL_MEM_CACHE_SIZE")
     (lispify-wo-prefix "CL_DEVICE_GLOBAL_MEM_SIZE")
     (lispify-wo-prefix "CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE")
     (lispify-wo-prefix "CL_DEVICE_MAX_CONSTANT_ARGS")
     (lispify-wo-prefix "CL_DEVICE_LOCAL_MEM_TYPE")
     (lispify-wo-prefix "CL_DEVICE_LOCAL_MEM_SIZE")
     (lispify-wo-prefix "CL_DEVICE_ERROR_CORRECTION_SUPPORT")
     (lispify-wo-prefix "CL_DEVICE_PROFILING_TIMER_RESOLUTION")
     (lispify-wo-prefix "CL_DEVICE_ENDIAN_LITTLE")
     (lispify-wo-prefix "CL_DEVICE_AVAILABLE")
     (lispify-wo-prefix "CL_DEVICE_COMPILER_AVAILABLE")
     (lispify-wo-prefix "CL_DEVICE_EXECUTION_CAPABILITIES")
     ;; #-opencl-2.0
     (lispify-wo-prefix "CL_DEVICE_QUEUE_PROPERTIES")
     ;; in opencl-2.0, CL_DEVICE_QUEUE_PROPERTIES is replaced by CL_DEVICE_QUEUE_ON_HOST_PROPERTIES
     #+opencl-2.0
     (lispify-wo-prefix "CL_DEVICE_QUEUE_ON_HOST_PROPERTIES")
     (lispify-wo-prefix "CL_DEVICE_NAME")
     (lispify-wo-prefix "CL_DEVICE_VENDOR")
     (lispify-wo-prefix "CL_DRIVER_VERSION")
     (lispify-wo-prefix "CL_DEVICE_PROFILE")
     (lispify-wo-prefix "CL_DEVICE_VERSION")
     (lispify-wo-prefix "CL_DEVICE_EXTENSIONS")
     (lispify-wo-prefix "CL_DEVICE_PLATFORM")
     (lispify-wo-prefix "CL_DEVICE_DOUBLE_FP_CONFIG")
     ;; 0x1033 reserved for CL_DEVICE_HALF_FP_CONFIG
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF")
     ;; #+(and opencl-1.1 (not opencl-2.0))
     #+opencl-1.1
     (lispify-wo-prefix "CL_DEVICE_HOST_UNIFIED_MEMORY")
     #+opencl-1.1
     (lispify-wo-prefix "CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR")
     #+opencl-1.1
     (lispify-wo-prefix "CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT")
     #+opencl-1.1
     (lispify-wo-prefix "CL_DEVICE_NATIVE_VECTOR_WIDTH_INT")
     #+opencl-1.1
     (lispify-wo-prefix "CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG")
     #+opencl-1.1
     (lispify-wo-prefix "CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT")
     #+opencl-1.1
     (lispify-wo-prefix "CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE")
     #+opencl-1.1
     (lispify-wo-prefix "CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF")
     #+opencl-1.1
     (lispify-wo-prefix "CL_DEVICE_OPENCL_C_VERSION")
     (lispify-wo-prefix "CL_DEVICE_LINKER_AVAILABLE")
     (lispify-wo-prefix "CL_DEVICE_BUILT_IN_KERNELS")
     (lispify-wo-prefix "CL_DEVICE_IMAGE_MAX_BUFFER_SIZE")
     (lispify-wo-prefix "CL_DEVICE_IMAGE_MAX_ARRAY_SIZE")
     (lispify-wo-prefix "CL_DEVICE_PARENT_DEVICE")
     (lispify-wo-prefix "CL_DEVICE_PARTITION_MAX_SUB_DEVICES")
     (lispify-wo-prefix "CL_DEVICE_PARTITION_PROPERTIES")
     (lispify-wo-prefix "CL_DEVICE_PARTITION_AFFINITY_DOMAIN")
     (lispify-wo-prefix "CL_DEVICE_PARTITION_TYPE")
     (lispify-wo-prefix "CL_DEVICE_REFERENCE_COUNT")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_INTEROP_USER_SYNC")
     (lispify-wo-prefix "CL_DEVICE_PRINTF_BUFFER_SIZE")
     (lispify-wo-prefix "CL_DEVICE_IMAGE_PITCH_ALIGNMENT")
     (lispify-wo-prefix "CL_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT")
     (lispify-wo-prefix "CL_DEVICE_MAX_READ_WRITE_IMAGE_ARGS")
     (lispify-wo-prefix "CL_DEVICE_MAX_GLOBAL_VARIABLE_SIZE")
     (lispify-wo-prefix "CL_DEVICE_QUEUE_ON_DEVICE_PROPERTIES")
     (lispify-wo-prefix "CL_DEVICE_QUEUE_ON_DEVICE_PREFERRED_SIZE")
     (lispify-wo-prefix "CL_DEVICE_QUEUE_ON_DEVICE_MAX_SIZE")
     (lispify-wo-prefix "CL_DEVICE_MAX_ON_DEVICE_QUEUES")
     (lispify-wo-prefix "CL_DEVICE_MAX_ON_DEVICE_EVENTS")
     (lispify-wo-prefix "CL_DEVICE_SVM_CAPABILITIES")
     (lispify-wo-prefix "CL_DEVICE_GLOBAL_VARIABLE_PREFERRED_TOTAL_SIZE")
     (lispify-wo-prefix "CL_DEVICE_MAX_PIPE_ARGS")
     (lispify-wo-prefix "CL_DEVICE_PIPE_MAX_ACTIVE_RESERVATIONS")
     (lispify-wo-prefix "CL_DEVICE_PIPE_MAX_PACKET_SIZE")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_PLATFORM_ATOMIC_ALIGNMENT")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_GLOBAL_ATOMIC_ALIGNMENT")
     (lispify-wo-prefix "CL_DEVICE_PREFERRED_LOCAL_ATOMIC_ALIGNMENT")

     (lispify "device_fp_config")
     (lispify-wo-prefix "CL_FP_DENORM")
     (lispify-wo-prefix "CL_FP_INF_NAN")
     (lispify-wo-prefix "CL_FP_ROUND_TO_NEAREST")
     (lispify-wo-prefix "CL_FP_ROUND_TO_ZERO")
     (lispify-wo-prefix "CL_FP_ROUND_TO_INF")
     (lispify-wo-prefix "CL_FP_FMA")
     (lispify-wo-prefix "CL_FP_SOFT_FLOAT")
     (lispify-wo-prefix "CL_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT")

     (lispify "device_mem_cache_type")
     (lispify-wo-prefix "CL_NONE")
     (lispify-wo-prefix "CL_READ_ONLY_CACHE")
     (lispify-wo-prefix "CL_READ_WRITE_CACHE")

     (lispify "device_local_mem_type")
     (lispify-wo-prefix "CL_LOCAL")
     (lispify-wo-prefix "CL_GLOBAL")

     (lispify "device_exec_capabilities")
     (lispify-wo-prefix "CL_EXEC_KERNEL")
     (lispify-wo-prefix "CL_EXEC_NATIVE_KERNEL")

     (lispify "command_queue_properties")
     (lispify-wo-prefix "CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE")
     (lispify-wo-prefix "CL_QUEUE_PROFILING_ENABLE")
     (lispify-wo-prefix "CL_QUEUE_ON_DEVICE")
     (lispify-wo-prefix "CL_QUEUE_ON_DEVICE_DEFAULT")

     (lispify "context_info")
     (lispify-wo-prefix "CL_CONTEXT_REFERENCE_COUNT")
     (lispify-wo-prefix "CL_CONTEXT_DEVICES")
     (lispify-wo-prefix "CL_CONTEXT_PROPERTIES")
     #+opencl-1.1
     (lispify-wo-prefix "CL_CONTEXT_NUM_DEVICES")

     (lispify "context_properties")
     (lispify-wo-prefix "CL_CONTEXT_PLATFORM")
     (lispify-wo-prefix "CL_CONTEXT_INTEROP_USER_SYNC")

     (lispify "device_partition_property")
     (lispify-wo-prefix "CL_DEVICE_PARTITION_EQUALLY")
     (lispify-wo-prefix "CL_DEVICE_PARTITION_BY_COUNTS")
     (lispify-wo-prefix "CL_DEVICE_PARTITION_BY_COUNTS_LIST_END")
     (lispify-wo-prefix "CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN")

     (lispify "device_affinity_domain")
     (lispify-wo-prefix "CL_DEVICE_AFFINITY_DOMAIN_NUMA")
     (lispify-wo-prefix "CL_DEVICE_AFFINITY_DOMAIN_L4_CACHE")
     (lispify-wo-prefix "CL_DEVICE_AFFINITY_DOMAIN_L3_CACHE")
     (lispify-wo-prefix "CL_DEVICE_AFFINITY_DOMAIN_L2_CACHE")
     (lispify-wo-prefix "CL_DEVICE_AFFINITY_DOMAIN_L1_CACHE")
     (lispify-wo-prefix "CL_DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE")

     (lispify "device_svm_capabilities")
     (lispify-wo-prefix "CL_DEVICE_SVM_COARSE_GRAIN_BUFFER")
     (lispify-wo-prefix "CL_DEVICE_SVM_FINE_GRAIN_BUFFER")
     (lispify-wo-prefix "CL_DEVICE_SVM_FINE_GRAIN_SYSTEM")
     (lispify-wo-prefix "CL_DEVICE_SVM_ATOMICS")

     (lispify "command_queue_info")
     (lispify-wo-prefix "CL_QUEUE_CONTEXT")
     (lispify-wo-prefix "CL_QUEUE_DEVICE")
     (lispify-wo-prefix "CL_QUEUE_REFERENCE_COUNT")
     (lispify-wo-prefix "CL_QUEUE_PROPERTIES")
     (lispify-wo-prefix "CL_QUEUE_SIZE")

     (lispify "mem_flags")
     (lispify-wo-prefix "CL_MEM_READ_WRITE")
     (lispify-wo-prefix "CL_MEM_WRITE_ONLY")
     (lispify-wo-prefix "CL_MEM_READ_ONLY")
     (lispify-wo-prefix "CL_MEM_USE_HOST_PTR")
     (lispify-wo-prefix "CL_MEM_ALLOC_HOST_PTR")
     (lispify-wo-prefix "CL_MEM_COPY_HOST_PTR")
     ;; reserved                                         (1 << 6)   
     (lispify-wo-prefix "CL_MEM_HOST_WRITE_ONLY")
     (lispify-wo-prefix "CL_MEM_HOST_READ_ONLY")
     (lispify-wo-prefix "CL_MEM_HOST_NO_ACCESS")
     (lispify-wo-prefix "CL_MEM_SVM_FINE_GRAIN_BUFFER")
     (lispify-wo-prefix "CL_MEM_SVM_ATOMICS")
     (lispify-wo-prefix "CL_MEM_KERNEL_READ_AND_WRITE")

     ;; FIXME : duplicated --- cl_mem_flags
     (lispify "svm_mem_flags")
     (lispify-wo-prefix "CL_MEM_READ_WRITE")
     (lispify-wo-prefix "CL_MEM_WRITE_ONLY")
     (lispify-wo-prefix "CL_MEM_READ_ONLY")
     (lispify-wo-prefix "CL_MEM_USE_HOST_PTR")
     (lispify-wo-prefix "CL_MEM_ALLOC_HOST_PTR")
     (lispify-wo-prefix "CL_MEM_COPY_HOST_PTR")
     ;; reserved                                         (1 << 6)   
     (lispify-wo-prefix "CL_MEM_HOST_WRITE_ONLY")
     (lispify-wo-prefix "CL_MEM_HOST_READ_ONLY")
     (lispify-wo-prefix "CL_MEM_HOST_NO_ACCESS")
     (lispify-wo-prefix "CL_MEM_SVM_FINE_GRAIN_BUFFER")
     (lispify-wo-prefix "CL_MEM_SVM_ATOMICS")
     (lispify-wo-prefix "CL_MEM_KERNEL_READ_AND_WRITE")

     (lispify "mem_migration_flags")
     (lispify-wo-prefix "CL_MIGRATE_MEM_OBJECT_HOST")
     (lispify-wo-prefix "CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED")

     (lispify "channel_order")
     (lispify-wo-prefix "CL_R")
     (lispify-wo-prefix "CL_A")
     (lispify-wo-prefix "CL_RG")
     (lispify-wo-prefix "CL_RA")
     (lispify-wo-prefix "CL_RGB")
     (lispify-wo-prefix "CL_RGBA")
     (lispify-wo-prefix "CL_BGRA")
     (lispify-wo-prefix "CL_ARGB")
     (lispify-wo-prefix "CL_INTENSITY")
     (lispify-wo-prefix "CL_LUMINANCE")
     #+opencl-1.1
     (lispify-wo-prefix "CL_Rx")
     #+opencl-1.1
     (lispify-wo-prefix "CL_RGx")
     #+opencl-1.1
     (lispify-wo-prefix "CL_RGBx")
     (lispify-wo-prefix "CL_DEPTH")
     (lispify-wo-prefix "CL_DEPTH_STENCIL")
     (lispify-wo-prefix "CL_sRGB")
     (lispify-wo-prefix "CL_sRGBx")
     (lispify-wo-prefix "CL_sRGBA")
     (lispify-wo-prefix "CL_sBGRA")
     (lispify-wo-prefix "CL_ABGR")

     (lispify "channel_type")
     (lispify-wo-prefix "CL_SNORM_INT8")
     (lispify-wo-prefix "CL_SNORM_INT16")
     (lispify-wo-prefix "CL_UNORM_INT8")
     (lispify-wo-prefix "CL_UNORM_INT16")
     (lispify-wo-prefix "CL_UNORM_SHORT_565")
     (lispify-wo-prefix "CL_UNORM_SHORT_555")
     (lispify-wo-prefix "CL_UNORM_INT_101010")
     (lispify-wo-prefix "CL_SIGNED_INT8")
     (lispify-wo-prefix "CL_SIGNED_INT16")
     (lispify-wo-prefix "CL_SIGNED_INT32")
     (lispify-wo-prefix "CL_UNSIGNED_INT8")
     (lispify-wo-prefix "CL_UNSIGNED_INT16")
     (lispify-wo-prefix "CL_UNSIGNED_INT32")
     (lispify-wo-prefix "CL_HALF_FLOAT")
     ;; (lispify-wo-prefix "CL_FLOAT")
     (lispify-wo-prefix "CL_UNORM_INT24")

     (lispify "mem_object_type")
     (lispify-wo-prefix "CL_MEM_OBJECT_BUFFER")
     (lispify-wo-prefix "CL_MEM_OBJECT_IMAGE2D")
     (lispify-wo-prefix "CL_MEM_OBJECT_IMAGE3D")
     (lispify-wo-prefix "CL_MEM_OBJECT_IMAGE2D_ARRAY")
     (lispify-wo-prefix "CL_MEM_OBJECT_IMAGE1D")
     (lispify-wo-prefix "CL_MEM_OBJECT_IMAGE1D_ARRAY")
     (lispify-wo-prefix "CL_MEM_OBJECT_IMAGE1D_BUFFER")
     (lispify-wo-prefix "CL_MEM_OBJECT_PIPE")

     (lispify "mem_info")
     (lispify-wo-prefix "CL_MEM_TYPE")
     (lispify-wo-prefix "CL_MEM_FLAGS")
     (lispify-wo-prefix "CL_MEM_SIZE")
     (lispify-wo-prefix "CL_MEM_HOST_PTR")
     (lispify-wo-prefix "CL_MEM_MAP_COUNT")
     (lispify-wo-prefix "CL_MEM_REFERENCE_COUNT")
     (lispify-wo-prefix "CL_MEM_CONTEXT")
     (lispify-wo-prefix "CL_MEM_ASSOCIATED_MEMOBJECT")
     (lispify-wo-prefix "CL_MEM_OFFSET")
     (lispify-wo-prefix "CL_MEM_USES_SVM_POINTER")

     (lispify "image_info")
     (lispify-wo-prefix "CL_IMAGE_FORMAT")
     (lispify-wo-prefix "CL_IMAGE_ELEMENT_SIZE")
     (lispify-wo-prefix "CL_IMAGE_ROW_PITCH")
     (lispify-wo-prefix "CL_IMAGE_SLICE_PITCH")
     (lispify-wo-prefix "CL_IMAGE_WIDTH")
     (lispify-wo-prefix "CL_IMAGE_HEIGHT")
     (lispify-wo-prefix "CL_IMAGE_DEPTH")
     (lispify-wo-prefix "CL_IMAGE_ARRAY_SIZE")
     ;; #-opencl-2.0
     (lispify-wo-prefix "CL_IMAGE_BUFFER")
     (lispify-wo-prefix "CL_IMAGE_NUM_MIP_LEVELS")
     (lispify-wo-prefix "CL_IMAGE_NUM_SAMPLES")

     (lispify "pipe_info")
     (lispify-wo-prefix "CL_PIPE_PACKET_SIZE")
     (lispify-wo-prefix "CL_PIPE_MAX_PACKETS")

     (lispify "addressing_mode")
     (lispify-wo-prefix "CL_ADDRESS_NONE")
     (lispify-wo-prefix "CL_ADDRESS_CLAMP_TO_EDGE")
     (lispify-wo-prefix "CL_ADDRESS_CLAMP")
     (lispify-wo-prefix "CL_ADDRESS_REPEAT")
     (lispify-wo-prefix "CL_ADDRESS_MIRRORED_REPEAT")

     (lispify "filter_mode")
     (lispify-wo-prefix "CL_FILTER_NEAREST")
     (lispify-wo-prefix "CL_FILTER_LINEAR")

     (lispify "sampler_info")
     (lispify-wo-prefix "CL_SAMPLER_REFERENCE_COUNT")
     (lispify-wo-prefix "CL_SAMPLER_CONTEXT")
     (lispify-wo-prefix "CL_SAMPLER_NORMALIZED_COORDS")
     (lispify-wo-prefix "CL_SAMPLER_ADDRESSING_MODE")
     (lispify-wo-prefix "CL_SAMPLER_FILTER_MODE")
     (lispify-wo-prefix "CL_SAMPLER_MIP_FILTER_MODE")
     (lispify-wo-prefix "CL_SAMPLER_LOD_MIN")
     (lispify-wo-prefix "CL_SAMPLER_LOD_MAX")

     (lispify "map_flags")
     (lispify-wo-prefix "CL_MAP_READ")
     (lispify-wo-prefix "CL_MAP_WRITE")
     ;; #+opencl-1.2
     (lispify-wo-prefix "CL_MAP_WRITE_INVALIDATE_REGION")

     (lispify "program_info")
     (lispify-wo-prefix "CL_PROGRAM_REFERENCE_COUNT")
     (lispify-wo-prefix "CL_PROGRAM_CONTEXT")
     (lispify-wo-prefix "CL_PROGRAM_NUM_DEVICES")
     (lispify-wo-prefix "CL_PROGRAM_DEVICES")
     (lispify-wo-prefix "CL_PROGRAM_SOURCE")
     (lispify-wo-prefix "CL_PROGRAM_BINARY_SIZES")
     (lispify-wo-prefix "CL_PROGRAM_BINARIES")
     (lispify-wo-prefix "CL_PROGRAM_NUM_KERNELS")
     (lispify-wo-prefix "CL_PROGRAM_KERNEL_NAMES")

     (lispify "program_build_info")
     (lispify-wo-prefix "CL_PROGRAM_BUILD_STATUS")
     (lispify-wo-prefix "CL_PROGRAM_BUILD_OPTIONS")
     (lispify-wo-prefix "CL_PROGRAM_BUILD_LOG")
     (lispify-wo-prefix "CL_PROGRAM_BINARY_TYPE")
     (lispify-wo-prefix "CL_PROGRAM_BUILD_GLOBAL_VARIABLE_TOTAL_SIZE")

     (lispify "program_binary_type")
     (lispify-wo-prefix "CL_PROGRAM_BINARY_TYPE_NONE")
     (lispify-wo-prefix "CL_PROGRAM_BINARY_TYPE_COMPILED_OBJECT")
     (lispify-wo-prefix "CL_PROGRAM_BINARY_TYPE_LIBRARY")
     (lispify-wo-prefix "CL_PROGRAM_BINARY_TYPE_EXECUTABLE")

     (lispify "build_status")
     (lispify-wo-prefix "CL_BUILD_SUCCESS")
     (lispify-wo-prefix "CL_BUILD_NONE")
     (lispify-wo-prefix "CL_BUILD_ERROR")
     (lispify-wo-prefix "CL_BUILD_IN_PROGRESS")

     (lispify "kernel_info")
     (lispify-wo-prefix "CL_KERNEL_FUNCTION_NAME")
     (lispify-wo-prefix "CL_KERNEL_NUM_ARGS")
     (lispify-wo-prefix "CL_KERNEL_REFERENCE_COUNT")
     (lispify-wo-prefix "CL_KERNEL_CONTEXT")
     (lispify-wo-prefix "CL_KERNEL_PROGRAM")
     (lispify-wo-prefix "CL_KERNEL_ATTRIBUTES")

     (lispify "kernel_arg_info")
     (lispify-wo-prefix "CL_KERNEL_ARG_ADDRESS_QUALIFIER")
     (lispify-wo-prefix "CL_KERNEL_ARG_ACCESS_QUALIFIER")
     (lispify-wo-prefix "CL_KERNEL_ARG_TYPE_NAME")
     (lispify-wo-prefix "CL_KERNEL_ARG_TYPE_QUALIFIER")
     (lispify-wo-prefix "CL_KERNEL_ARG_NAME")

     (lispify "kernel_arg_address_qualifier")
     (lispify-wo-prefix "CL_KERNEL_ARG_ADDRESS_GLOBAL")
     (lispify-wo-prefix "CL_KERNEL_ARG_ADDRESS_LOCAL")
     (lispify-wo-prefix "CL_KERNEL_ARG_ADDRESS_CONSTANT")
     (lispify-wo-prefix "CL_KERNEL_ARG_ADDRESS_PRIVATE")

     (lispify "kernel_arg_access_qualifier")
     (lispify-wo-prefix "CL_KERNEL_ARG_ACCESS_READ_ONLY")
     (lispify-wo-prefix "CL_KERNEL_ARG_ACCESS_WRITE_ONLY")
     (lispify-wo-prefix "CL_KERNEL_ARG_ACCESS_READ_WRITE")
     (lispify-wo-prefix "CL_KERNEL_ARG_ACCESS_NONE")

     (lispify "kernel_arg_type_qualifer")
     (lispify-wo-prefix "CL_KERNEL_ARG_TYPE_NONE")
     (lispify-wo-prefix "CL_KERNEL_ARG_TYPE_CONST")
     (lispify-wo-prefix "CL_KERNEL_ARG_TYPE_RESTRICT")
     (lispify-wo-prefix "CL_KERNEL_ARG_TYPE_VOLATILE")
     (lispify-wo-prefix "CL_KERNEL_ARG_TYPE_PIPE")

     (lispify "kernel_work_group_info")
     (lispify-wo-prefix "CL_KERNEL_WORK_GROUP_SIZE")
     (lispify-wo-prefix "CL_KERNEL_COMPILE_WORK_GROUP_SIZE")
     (lispify-wo-prefix "CL_KERNEL_LOCAL_MEM_SIZE")
     (lispify-wo-prefix "CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE")
     (lispify-wo-prefix "CL_KERNEL_PRIVATE_MEM_SIZE")
     (lispify-wo-prefix "CL_KERNEL_GLOBAL_WORK_SIZE")
     #+opencl-2.1
     (lispify-wo-prefix "CL_KERNEL_MAX_NUM_SUB_GROUPS")
     #+opencl-2.1
     (lispify-wo-prefix "CL_KERNEL_COMPILE_NUM_SUB_GROUPS")

     #+opencl-2.1
     (lispify "kernel_sub_group_info")
     (lispify-wo-prefix "CL_KERNEL_MAX_SUB_GROUP_SIZE_FOR_NDRANGE")
     (lispify-wo-prefix "CL_KERNEL_SUB_GROUP_COUNT_FOR_NDRANGE")
     (lispify-wo-prefix "CL_GET_LOCAL_SIZE_FOR_SUB_GROUP_COUNT")

     (lispify "kernel_exec_info")
     (lispify-wo-prefix "CL_KERNEL_EXEC_INFO_SVM_PTRS")
     (lispify-wo-prefix "CL_KERNEL_EXEC_INFO_SVM_FINE_GRAIN_SYSTEM")

     (lispify "event_info")
     (lispify-wo-prefix "CL_EVENT_COMMAND_QUEUE")
     (lispify-wo-prefix "CL_EVENT_COMMAND_TYPE")
     (lispify-wo-prefix "CL_EVENT_REFERENCE_COUNT")
     (lispify-wo-prefix "CL_EVENT_COMMAND_EXECUTION_STATUS")
     (lispify-wo-prefix "CL_EVENT_CONTEXT")

     (lispify "command_type")
     (lispify-wo-prefix "CL_COMMAND_NDRANGE_KERNEL")
     (lispify-wo-prefix "CL_COMMAND_TASK")
     (lispify-wo-prefix "CL_COMMAND_NATIVE_KERNEL")
     (lispify-wo-prefix "CL_COMMAND_READ_BUFFER")
     (lispify-wo-prefix "CL_COMMAND_WRITE_BUFFER")
     (lispify-wo-prefix "CL_COMMAND_COPY_BUFFER")
     (lispify-wo-prefix "CL_COMMAND_READ_IMAGE")
     (lispify-wo-prefix "CL_COMMAND_WRITE_IMAGE")
     (lispify-wo-prefix "CL_COMMAND_COPY_IMAGE")
     (lispify-wo-prefix "CL_COMMAND_COPY_IMAGE_TO_BUFFER")
     (lispify-wo-prefix "CL_COMMAND_COPY_BUFFER_TO_IMAGE")
     (lispify-wo-prefix "CL_COMMAND_MAP_BUFFER")
     (lispify-wo-prefix "CL_COMMAND_MAP_IMAGE")
     (lispify-wo-prefix "CL_COMMAND_UNMAP_MEM_OBJECT")
     (lispify-wo-prefix "CL_COMMAND_MARKER")
     (lispify-wo-prefix "CL_COMMAND_ACQUIRE_GL_OBJECTS")
     (lispify-wo-prefix "CL_COMMAND_RELEASE_GL_OBJECTS")
     (lispify-wo-prefix "CL_COMMAND_READ_BUFFER_RECT")
     (lispify-wo-prefix "CL_COMMAND_WRITE_BUFFER_RECT")
     (lispify-wo-prefix "CL_COMMAND_COPY_BUFFER_RECT")
     (lispify-wo-prefix "CL_COMMAND_USER")
     (lispify-wo-prefix "CL_COMMAND_BARRIER")
     (lispify-wo-prefix "CL_COMMAND_MIGRATE_MEM_OBJECTS")
     (lispify-wo-prefix "CL_COMMAND_FILL_BUFFER")
     (lispify-wo-prefix "CL_COMMAND_FILL_IMAGE")
     (lispify-wo-prefix "CL_COMMAND_SVM_FREE")
     (lispify-wo-prefix "CL_COMMAND_SVM_MEMCPY")
     (lispify-wo-prefix "CL_COMMAND_SVM_MEMFILL")
     (lispify-wo-prefix "CL_COMMAND_SVM_MAP")
     (lispify-wo-prefix "CL_COMMAND_SVM_UNMAP")

     (lispify "command_execution_status")
     (lispify-wo-prefix "CL_COMPLETE")
     (lispify-wo-prefix "CL_RUNNING")
     (lispify-wo-prefix "CL_SUBMITTED")
     (lispify-wo-prefix "CL_QUEUED")

     (lispify "buffer_create_type")
     (lispify-wo-prefix "CL_BUFFER_CREATE_TYPE_REGION")

     (lispify "profiling_info")
     (lispify-wo-prefix "CL_PROFILING_COMMAND_QUEUED")
     (lispify-wo-prefix "CL_PROFILING_COMMAND_SUBMIT")
     (lispify-wo-prefix "CL_PROFILING_COMMAND_START")
     (lispify-wo-prefix "CL_PROFILING_COMMAND_END")
     (lispify-wo-prefix "CL_PROFILING_COMMAND_COMPLETE"))
  (:export
   #:image-format
   #:image-desc))

