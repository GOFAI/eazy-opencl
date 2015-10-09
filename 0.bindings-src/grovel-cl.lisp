;;; groveller file

(in-package #:eazy-opencl.bindings)

(include "CL/cl.h")

;;; types

(ctype #.(lispify "intptr_t") "intptr_t")
(ctype #.(lispify "uintptr_t") "uintptr_t")
(ctype #.(lispify "size_t") "size_t")
(ctype #.(lispify "ptrdiff_t") "ptrdiff_t")

;; /* WARNING!  Unlike cl_ types in cl_platform.h, cl_bool is not guaranteed to be the same size as the bool in kernels. */ 
(ctype #.(lispify "cl_bool") "cl_bool")
(ctype #.(lispify "cl_bitfield") "cl_bitfield")
(ctype #.(lispify "cl_device_type") "cl_device_type")
(ctype #.(lispify "cl_platform_info") "cl_platform_info")
(ctype #.(lispify "cl_device_info") "cl_device_info")
(ctype #.(lispify "cl_device_fp_config") "cl_device_fp_config")
(ctype #.(lispify "cl_device_mem_cache_type") "cl_device_mem_cache_type")
(ctype #.(lispify "cl_device_local_mem_type") "cl_device_local_mem_type")
(ctype #.(lispify "cl_device_exec_capabilities") "cl_device_exec_capabilities")
(ctype #.(lispify "cl_device_svm_capabilities") "cl_device_svm_capabilities")
(ctype #.(lispify "cl_command_queue_properties") "cl_command_queue_properties")
(ctype #.(lispify "cl_device_partition_property") "cl_device_partition_property")
(ctype #.(lispify "cl_device_affinity_domain") "cl_device_affinity_domain")
(ctype #.(lispify "cl_context_properties") "cl_context_properties")
(ctype #.(lispify "cl_context_info") "cl_context_info")
(ctype #.(lispify "cl_queue_properties") "cl_queue_properties")
(ctype #.(lispify "cl_command_queue_info") "cl_command_queue_info")
(ctype #.(lispify "cl_channel_order") "cl_channel_order")
(ctype #.(lispify "cl_channel_type") "cl_channel_type")
(ctype #.(lispify "cl_mem_flags") "cl_mem_flags")
(ctype #.(lispify "cl_svm_mem_flags") "cl_svm_mem_flags")
(ctype #.(lispify "cl_mem_object_type") "cl_mem_object_type")
(ctype #.(lispify "cl_mem_info") "cl_mem_info")
(ctype #.(lispify "cl_mem_migration_flags") "cl_mem_migration_flags")
(ctype #.(lispify "cl_image_info") "cl_image_info")
(ctype #.(lispify "cl_buffer_create_type") "cl_buffer_create_type")
(ctype #.(lispify "cl_addressing_mode") "cl_addressing_mode")
(ctype #.(lispify "cl_filter_mode") "cl_filter_mode")
(ctype #.(lispify "cl_sampler_info") "cl_sampler_info")
(ctype #.(lispify "cl_map_flags") "cl_map_flags")
(ctype #.(lispify "cl_pipe_properties") "cl_pipe_properties")
(ctype #.(lispify "cl_pipe_info") "cl_pipe_info")
(ctype #.(lispify "cl_program_info") "cl_program_info")
(ctype #.(lispify "cl_program_build_info") "cl_program_build_info")
(ctype #.(lispify "cl_program_binary_type") "cl_program_binary_type")
(ctype #.(lispify "cl_build_status") "cl_build_status")
(ctype #.(lispify "cl_kernel_info") "cl_kernel_info")
(ctype #.(lispify "cl_kernel_arg_info") "cl_kernel_arg_info")
(ctype #.(lispify "cl_kernel_arg_address_qualifier") "cl_kernel_arg_address_qualifier")
(ctype #.(lispify "cl_kernel_arg_access_qualifier") "cl_kernel_arg_access_qualifier")
(ctype #.(lispify "cl_kernel_arg_type_qualifier") "cl_kernel_arg_type_qualifier")
(ctype #.(lispify "cl_kernel_work_group_info") "cl_kernel_work_group_info")
(ctype #.(lispify "cl_event_info") "cl_event_info")
(ctype #.(lispify "cl_command_type") "cl_command_type")
(ctype #.(lispify "cl_profiling_info") "cl_profiling_info")
(ctype #.(lispify "cl_sampler_properties") "cl_sampler_properties")
(ctype #.(lispify "cl_kernel_exec_info") "cl_kernel_exec_info")

;;; structs


;;; enums

(constantenum cl-error-codes
              ((#.(lispify-k "SUCCESS") "CL_SUCCESS"))
              ((#.(lispify-k "DEVICE_NOT_FOUND") "CL_DEVICE_NOT_FOUND"))
              ((#.(lispify-k "DEVICE_NOT_AVAILABLE") "CL_DEVICE_NOT_AVAILABLE"))
              ((#.(lispify-k "COMPILER_NOT_AVAILABLE") "CL_COMPILER_NOT_AVAILABLE"))
              ((#.(lispify-k "MEM_OBJECT_ALLOCATION_FAILURE") "CL_MEM_OBJECT_ALLOCATION_FAILURE"))
              ((#.(lispify-k "OUT_OF_RESOURCES") "CL_OUT_OF_RESOURCES"))
              ((#.(lispify-k "OUT_OF_HOST_MEMORY") "CL_OUT_OF_HOST_MEMORY"))
              ((#.(lispify-k "PROFILING_INFO_NOT_AVAILABLE") "CL_PROFILING_INFO_NOT_AVAILABLE"))
              ((#.(lispify-k "MEM_COPY_OVERLAP") "CL_MEM_COPY_OVERLAP"))
              ((#.(lispify-k "IMAGE_FORMAT_MISMATCH") "CL_IMAGE_FORMAT_MISMATCH"))
              ((#.(lispify-k "IMAGE_FORMAT_NOT_SUPPORTED") "CL_IMAGE_FORMAT_NOT_SUPPORTED"))
              ((#.(lispify-k "BUILD_PROGRAM_FAILURE") "CL_BUILD_PROGRAM_FAILURE"))
              ((#.(lispify-k "MAP_FAILURE") "CL_MAP_FAILURE"))
              ((#.(lispify-k "MISALIGNED_SUB_BUFFER_OFFSET") "CL_MISALIGNED_SUB_BUFFER_OFFSET"))
              ((#.(lispify-k "EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST") "CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST"))
              ((#.(lispify-k "COMPILE_PROGRAM_FAILURE") "CL_COMPILE_PROGRAM_FAILURE"))
              ((#.(lispify-k "LINKER_NOT_AVAILABLE") "CL_LINKER_NOT_AVAILABLE"))
              ((#.(lispify-k "LINK_PROGRAM_FAILURE") "CL_LINK_PROGRAM_FAILURE"))
              ((#.(lispify-k "DEVICE_PARTITION_FAILED") "CL_DEVICE_PARTITION_FAILED"))
              ((#.(lispify-k "KERNEL_ARG_INFO_NOT_AVAILABLE") "CL_KERNEL_ARG_INFO_NOT_AVAILABLE"))
              ((#.(lispify-k "INVALID_VALUE") "CL_INVALID_VALUE"))
              ((#.(lispify-k "INVALID_DEVICE_TYPE") "CL_INVALID_DEVICE_TYPE"))
              ((#.(lispify-k "INVALID_PLATFORM") "CL_INVALID_PLATFORM"))
              ((#.(lispify-k "INVALID_DEVICE") "CL_INVALID_DEVICE"))
              ((#.(lispify-k "INVALID_CONTEXT") "CL_INVALID_CONTEXT"))
              ((#.(lispify-k "INVALID_QUEUE_PROPERTIES") "CL_INVALID_QUEUE_PROPERTIES"))
              ((#.(lispify-k "INVALID_COMMAND_QUEUE") "CL_INVALID_COMMAND_QUEUE"))
              ((#.(lispify-k "INVALID_HOST_PTR") "CL_INVALID_HOST_PTR"))
              ((#.(lispify-k "INVALID_MEM_OBJECT") "CL_INVALID_MEM_OBJECT"))
              ((#.(lispify-k "INVALID_IMAGE_FORMAT_DESCRIPTOR") "CL_INVALID_IMAGE_FORMAT_DESCRIPTOR"))
              ((#.(lispify-k "INVALID_IMAGE_SIZE") "CL_INVALID_IMAGE_SIZE"))
              ((#.(lispify-k "INVALID_SAMPLER") "CL_INVALID_SAMPLER"))
              ((#.(lispify-k "INVALID_BINARY") "CL_INVALID_BINARY"))
              ((#.(lispify-k "INVALID_BUILD_OPTIONS") "CL_INVALID_BUILD_OPTIONS"))
              ((#.(lispify-k "INVALID_PROGRAM") "CL_INVALID_PROGRAM"))
              ((#.(lispify-k "INVALID_PROGRAM_EXECUTABLE") "CL_INVALID_PROGRAM_EXECUTABLE"))
              ((#.(lispify-k "INVALID_KERNEL_NAME") "CL_INVALID_KERNEL_NAME"))
              ((#.(lispify-k "INVALID_KERNEL_DEFINITION") "CL_INVALID_KERNEL_DEFINITION"))
              ((#.(lispify-k "INVALID_KERNEL") "CL_INVALID_KERNEL"))
              ((#.(lispify-k "INVALID_ARG_INDEX") "CL_INVALID_ARG_INDEX"))
              ((#.(lispify-k "INVALID_ARG_VALUE") "CL_INVALID_ARG_VALUE"))
              ((#.(lispify-k "INVALID_ARG_SIZE") "CL_INVALID_ARG_SIZE"))
              ((#.(lispify-k "INVALID_KERNEL_ARGS") "CL_INVALID_KERNEL_ARGS"))
              ((#.(lispify-k "INVALID_WORK_DIMENSION") "CL_INVALID_WORK_DIMENSION"))
              ((#.(lispify-k "INVALID_WORK_GROUP_SIZE") "CL_INVALID_WORK_GROUP_SIZE"))
              ((#.(lispify-k "INVALID_WORK_ITEM_SIZE") "CL_INVALID_WORK_ITEM_SIZE"))
              ((#.(lispify-k "INVALID_GLOBAL_OFFSET") "CL_INVALID_GLOBAL_OFFSET"))
              ((#.(lispify-k "INVALID_EVENT_WAIT_LIST") "CL_INVALID_EVENT_WAIT_LIST"))
              ((#.(lispify-k "INVALID_EVENT") "CL_INVALID_EVENT"))
              ((#.(lispify-k "INVALID_OPERATION") "CL_INVALID_OPERATION"))
              ((#.(lispify-k "INVALID_GL_OBJECT") "CL_INVALID_GL_OBJECT"))
              ((#.(lispify-k "INVALID_BUFFER_SIZE") "CL_INVALID_BUFFER_SIZE"))
              ((#.(lispify-k "INVALID_MIP_LEVEL") "CL_INVALID_MIP_LEVEL"))
              ((#.(lispify-k "INVALID_GLOBAL_WORK_SIZE") "CL_INVALID_GLOBAL_WORK_SIZE"))
              ((#.(lispify-k "INVALID_PROPERTY") "CL_INVALID_PROPERTY"))
              ((#.(lispify-k "INVALID_IMAGE_DESCRIPTOR") "CL_INVALID_IMAGE_DESCRIPTOR"))
              ((#.(lispify-k "INVALID_COMPILER_OPTIONS") "CL_INVALID_COMPILER_OPTIONS"))
              ((#.(lispify-k "INVALID_LINKER_OPTIONS") "CL_INVALID_LINKER_OPTIONS"))
              ((#.(lispify-k "INVALID_DEVICE_PARTITION_COUNT") "CL_INVALID_DEVICE_PARTITION_COUNT"))
              ((#.(lispify-k "INVALID_PIPE_SIZE") "CL_INVALID_PIPE_SIZE"))
              ((#.(lispify-k "INVALID_DEVICE_QUEUE") "CL_INVALID_DEVICE_QUEUE")))

(constant (#.(lispify "CL_VERSION_1_0") "CL_VERSION_1_0"))
(constant (#.(lispify "CL_VERSION_1_1") "CL_VERSION_1_1"))
(constant (#.(lispify "CL_VERSION_1_2") "CL_VERSION_1_2"))
(constant (#.(lispify "CL_VERSION_2_0") "CL_VERSION_2_0"))

(constant (#.(lispify "CL_FALSE") "CL_FALSE"))
(constant (#.(lispify "CL_TRUE") "CL_TRUE"))
(constant (#.(lispify "CL_BLOCKING") "CL_BLOCKING"))
(constant (#.(lispify "CL_NON_BLOCKING") "CL_NON_BLOCKING"))

(constantenum #.(lispify "cl_platform_info")
              ((#.(lispify-k "PLATFORM_PROFILE") "CL_PLATFORM_PROFILE"))
              ((#.(lispify-k "PLATFORM_VERSION") "CL_PLATFORM_VERSION"))
              ((#.(lispify-k "PLATFORM_NAME") "CL_PLATFORM_NAME"))
              ((#.(lispify-k "PLATFORM_VENDOR") "CL_PLATFORM_VENDOR"))
              ((#.(lispify-k "PLATFORM_EXTENSIONS") "CL_PLATFORM_EXTENSIONS")))

(bitfield #.(lispify "cl_device_type")
          ((#.(lispify-k "DEVICE_TYPE_DEFAULT") "CL_DEVICE_TYPE_DEFAULT"))
          ((#.(lispify-k "DEVICE_TYPE_CPU") "CL_DEVICE_TYPE_CPU"))
          ((#.(lispify-k "DEVICE_TYPE_GPU") "CL_DEVICE_TYPE_GPU"))
          ((#.(lispify-k "DEVICE_TYPE_ACCELERATOR") "CL_DEVICE_TYPE_ACCELERATOR"))
          ((#.(lispify-k "DEVICE_TYPE_CUSTOM") "CL_DEVICE_TYPE_CUSTOM"))
          ((#.(lispify-k "DEVICE_TYPE_ALL") "CL_DEVICE_TYPE_ALL")))

(constantenum #.(lispify "cl_device_info")
              ((#.(lispify-k "DEVICE_TYPE") "CL_DEVICE_TYPE"))
              ((#.(lispify-k "DEVICE_VENDOR_ID") "CL_DEVICE_VENDOR_ID"))
              ((#.(lispify-k "DEVICE_MAX_COMPUTE_UNITS") "CL_DEVICE_MAX_COMPUTE_UNITS"))
              ((#.(lispify-k "DEVICE_MAX_WORK_ITEM_DIMENSIONS") "CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS"))
              ((#.(lispify-k "DEVICE_MAX_WORK_GROUP_SIZE") "CL_DEVICE_MAX_WORK_GROUP_SIZE"))
              ((#.(lispify-k "DEVICE_MAX_WORK_ITEM_SIZES") "CL_DEVICE_MAX_WORK_ITEM_SIZES"))
              ((#.(lispify-k "DEVICE_PREFERRED_VECTOR_WIDTH_CHAR") "CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR"))
              ((#.(lispify-k "DEVICE_PREFERRED_VECTOR_WIDTH_SHORT") "CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT"))
              ((#.(lispify-k "DEVICE_PREFERRED_VECTOR_WIDTH_INT") "CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT"))
              ((#.(lispify-k "DEVICE_PREFERRED_VECTOR_WIDTH_LONG") "CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG"))
              ((#.(lispify-k "DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT") "CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT"))
              ((#.(lispify-k "DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE") "CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE"))
              ((#.(lispify-k "DEVICE_MAX_CLOCK_FREQUENCY") "CL_DEVICE_MAX_CLOCK_FREQUENCY"))
              ((#.(lispify-k "DEVICE_ADDRESS_BITS") "CL_DEVICE_ADDRESS_BITS"))
              ((#.(lispify-k "DEVICE_MAX_READ_IMAGE_ARGS") "CL_DEVICE_MAX_READ_IMAGE_ARGS"))
              ((#.(lispify-k "DEVICE_MAX_WRITE_IMAGE_ARGS") "CL_DEVICE_MAX_WRITE_IMAGE_ARGS"))
              ((#.(lispify-k "DEVICE_MAX_MEM_ALLOC_SIZE") "CL_DEVICE_MAX_MEM_ALLOC_SIZE"))
              ((#.(lispify-k "DEVICE_IMAGE2D_MAX_WIDTH") "CL_DEVICE_IMAGE2D_MAX_WIDTH"))
              ((#.(lispify-k "DEVICE_IMAGE2D_MAX_HEIGHT") "CL_DEVICE_IMAGE2D_MAX_HEIGHT"))
              ((#.(lispify-k "DEVICE_IMAGE3D_MAX_WIDTH") "CL_DEVICE_IMAGE3D_MAX_WIDTH"))
              ((#.(lispify-k "DEVICE_IMAGE3D_MAX_HEIGHT") "CL_DEVICE_IMAGE3D_MAX_HEIGHT"))
              ((#.(lispify-k "DEVICE_IMAGE3D_MAX_DEPTH") "CL_DEVICE_IMAGE3D_MAX_DEPTH"))
              ((#.(lispify-k "DEVICE_IMAGE_SUPPORT") "CL_DEVICE_IMAGE_SUPPORT"))
              ((#.(lispify-k "DEVICE_MAX_PARAMETER_SIZE") "CL_DEVICE_MAX_PARAMETER_SIZE"))
              ((#.(lispify-k "DEVICE_MAX_SAMPLERS") "CL_DEVICE_MAX_SAMPLERS"))
              ((#.(lispify-k "DEVICE_MEM_BASE_ADDR_ALIGN") "CL_DEVICE_MEM_BASE_ADDR_ALIGN"))
              ((#.(lispify-k "DEVICE_MIN_DATA_TYPE_ALIGN_SIZE") "CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE"))
              ((#.(lispify-k "DEVICE_SINGLE_FP_CONFIG") "CL_DEVICE_SINGLE_FP_CONFIG"))
              ((#.(lispify-k "DEVICE_GLOBAL_MEM_CACHE_TYPE") "CL_DEVICE_GLOBAL_MEM_CACHE_TYPE"))
              ((#.(lispify-k "DEVICE_GLOBAL_MEM_CACHELINE_SIZE") "CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE"))
              ((#.(lispify-k "DEVICE_GLOBAL_MEM_CACHE_SIZE") "CL_DEVICE_GLOBAL_MEM_CACHE_SIZE"))
              ((#.(lispify-k "DEVICE_GLOBAL_MEM_SIZE") "CL_DEVICE_GLOBAL_MEM_SIZE"))
              ((#.(lispify-k "DEVICE_MAX_CONSTANT_BUFFER_SIZE") "CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE"))
              ((#.(lispify-k "DEVICE_MAX_CONSTANT_ARGS") "CL_DEVICE_MAX_CONSTANT_ARGS"))
              ((#.(lispify-k "DEVICE_LOCAL_MEM_TYPE") "CL_DEVICE_LOCAL_MEM_TYPE"))
              ((#.(lispify-k "DEVICE_LOCAL_MEM_SIZE") "CL_DEVICE_LOCAL_MEM_SIZE"))
              ((#.(lispify-k "DEVICE_ERROR_CORRECTION_SUPPORT") "CL_DEVICE_ERROR_CORRECTION_SUPPORT"))
              ((#.(lispify-k "DEVICE_PROFILING_TIMER_RESOLUTION") "CL_DEVICE_PROFILING_TIMER_RESOLUTION"))
              ((#.(lispify-k "DEVICE_ENDIAN_LITTLE") "CL_DEVICE_ENDIAN_LITTLE"))
              ((#.(lispify-k "DEVICE_AVAILABLE") "CL_DEVICE_AVAILABLE"))
              ((#.(lispify-k "DEVICE_COMPILER_AVAILABLE") "CL_DEVICE_COMPILER_AVAILABLE"))
              ((#.(lispify-k "DEVICE_EXECUTION_CAPABILITIES") "CL_DEVICE_EXECUTION_CAPABILITIES"))
              ((#.(lispify-k "DEVICE_QUEUE_PROPERTIES") "CL_DEVICE_QUEUE_PROPERTIES"))
              ((#.(lispify-k "DEVICE_QUEUE_ON_HOST_PROPERTIES") "CL_DEVICE_QUEUE_ON_HOST_PROPERTIES"))
              ((#.(lispify-k "DEVICE_NAME") "CL_DEVICE_NAME"))
              ((#.(lispify-k "DEVICE_VENDOR") "CL_DEVICE_VENDOR"))
              ((#.(lispify-k "DRIVER_VERSION") "CL_DRIVER_VERSION"))
              ((#.(lispify-k "DEVICE_PROFILE") "CL_DEVICE_PROFILE"))
              ((#.(lispify-k "DEVICE_VERSION") "CL_DEVICE_VERSION"))
              ((#.(lispify-k "DEVICE_EXTENSIONS") "CL_DEVICE_EXTENSIONS"))
              ((#.(lispify-k "DEVICE_PLATFORM") "CL_DEVICE_PLATFORM"))
              ((#.(lispify-k "DEVICE_DOUBLE_FP_CONFIG") "CL_DEVICE_DOUBLE_FP_CONFIG"))
              ;; 0x1033 reserved for CL_DEVICE_HALF_FP_CONFIG
              ((#.(lispify-k "DEVICE_PREFERRED_VECTOR_WIDTH_HALF") "CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF"))
              ((#.(lispify-k "DEVICE_HOST_UNIFIED_MEMORY") "CL_DEVICE_HOST_UNIFIED_MEMORY"))
              ((#.(lispify-k "DEVICE_NATIVE_VECTOR_WIDTH_CHAR") "CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR"))
              ((#.(lispify-k "DEVICE_NATIVE_VECTOR_WIDTH_SHORT") "CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT"))
              ((#.(lispify-k "DEVICE_NATIVE_VECTOR_WIDTH_INT") "CL_DEVICE_NATIVE_VECTOR_WIDTH_INT"))
              ((#.(lispify-k "DEVICE_NATIVE_VECTOR_WIDTH_LONG") "CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG"))
              ((#.(lispify-k "DEVICE_NATIVE_VECTOR_WIDTH_FLOAT") "CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT"))
              ((#.(lispify-k "DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE") "CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE"))
              ((#.(lispify-k "DEVICE_NATIVE_VECTOR_WIDTH_HALF") "CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF"))
              ((#.(lispify-k "DEVICE_OPENCL_C_VERSION") "CL_DEVICE_OPENCL_C_VERSION"))
              ((#.(lispify-k "DEVICE_LINKER_AVAILABLE") "CL_DEVICE_LINKER_AVAILABLE"))
              ((#.(lispify-k "DEVICE_BUILT_IN_KERNELS") "CL_DEVICE_BUILT_IN_KERNELS"))
              ((#.(lispify-k "DEVICE_IMAGE_MAX_BUFFER_SIZE") "CL_DEVICE_IMAGE_MAX_BUFFER_SIZE"))
              ((#.(lispify-k "DEVICE_IMAGE_MAX_ARRAY_SIZE") "CL_DEVICE_IMAGE_MAX_ARRAY_SIZE"))
              ((#.(lispify-k "DEVICE_PARENT_DEVICE") "CL_DEVICE_PARENT_DEVICE"))
              ((#.(lispify-k "DEVICE_PARTITION_MAX_SUB_DEVICES") "CL_DEVICE_PARTITION_MAX_SUB_DEVICES"))
              ((#.(lispify-k "DEVICE_PARTITION_PROPERTIES") "CL_DEVICE_PARTITION_PROPERTIES"))
              ((#.(lispify-k "DEVICE_PARTITION_AFFINITY_DOMAIN") "CL_DEVICE_PARTITION_AFFINITY_DOMAIN"))
              ((#.(lispify-k "DEVICE_PARTITION_TYPE") "CL_DEVICE_PARTITION_TYPE"))
              ((#.(lispify-k "DEVICE_REFERENCE_COUNT") "CL_DEVICE_REFERENCE_COUNT"))
              ((#.(lispify-k "DEVICE_PREFERRED_INTEROP_USER_SYNC") "CL_DEVICE_PREFERRED_INTEROP_USER_SYNC"))
              ((#.(lispify-k "DEVICE_PRINTF_BUFFER_SIZE") "CL_DEVICE_PRINTF_BUFFER_SIZE"))
              ((#.(lispify-k "DEVICE_IMAGE_PITCH_ALIGNMENT") "CL_DEVICE_IMAGE_PITCH_ALIGNMENT"))
              ((#.(lispify-k "DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT") "CL_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT"))
              ((#.(lispify-k "DEVICE_MAX_READ_WRITE_IMAGE_ARGS") "CL_DEVICE_MAX_READ_WRITE_IMAGE_ARGS"))
              ((#.(lispify-k "DEVICE_MAX_GLOBAL_VARIABLE_SIZE") "CL_DEVICE_MAX_GLOBAL_VARIABLE_SIZE"))
              ((#.(lispify-k "DEVICE_QUEUE_ON_DEVICE_PROPERTIES") "CL_DEVICE_QUEUE_ON_DEVICE_PROPERTIES"))
              ((#.(lispify-k "DEVICE_QUEUE_ON_DEVICE_PREFERRED_SIZE") "CL_DEVICE_QUEUE_ON_DEVICE_PREFERRED_SIZE"))
              ((#.(lispify-k "DEVICE_QUEUE_ON_DEVICE_MAX_SIZE") "CL_DEVICE_QUEUE_ON_DEVICE_MAX_SIZE"))
              ((#.(lispify-k "DEVICE_MAX_ON_DEVICE_QUEUES") "CL_DEVICE_MAX_ON_DEVICE_QUEUES"))
              ((#.(lispify-k "DEVICE_MAX_ON_DEVICE_EVENTS") "CL_DEVICE_MAX_ON_DEVICE_EVENTS"))
              ((#.(lispify-k "DEVICE_SVM_CAPABILITIES") "CL_DEVICE_SVM_CAPABILITIES"))
              ((#.(lispify-k "DEVICE_GLOBAL_VARIABLE_PREFERRED_TOTAL_SIZE") "CL_DEVICE_GLOBAL_VARIABLE_PREFERRED_TOTAL_SIZE"))
              ((#.(lispify-k "DEVICE_MAX_PIPE_ARGS") "CL_DEVICE_MAX_PIPE_ARGS"))
              ((#.(lispify-k "DEVICE_PIPE_MAX_ACTIVE_RESERVATIONS") "CL_DEVICE_PIPE_MAX_ACTIVE_RESERVATIONS"))
              ((#.(lispify-k "DEVICE_PIPE_MAX_PACKET_SIZE") "CL_DEVICE_PIPE_MAX_PACKET_SIZE"))
              ((#.(lispify-k "DEVICE_PREFERRED_PLATFORM_ATOMIC_ALIGNMENT") "CL_DEVICE_PREFERRED_PLATFORM_ATOMIC_ALIGNMENT"))
              ((#.(lispify-k "DEVICE_PREFERRED_GLOBAL_ATOMIC_ALIGNMENT") "CL_DEVICE_PREFERRED_GLOBAL_ATOMIC_ALIGNMENT"))
              ((#.(lispify-k "DEVICE_PREFERRED_LOCAL_ATOMIC_ALIGNMENT") "CL_DEVICE_PREFERRED_LOCAL_ATOMIC_ALIGNMENT")))

(bitfield #.(lispify "cl_device_fp_config")
          ((#.(lispify-k "FP_DENORM") "CL_FP_DENORM"))
          ((#.(lispify-k "FP_INF_NAN") "CL_FP_INF_NAN"))
          ((#.(lispify-k "FP_ROUND_TO_NEAREST") "CL_FP_ROUND_TO_NEAREST"))
          ((#.(lispify-k "FP_ROUND_TO_ZERO") "CL_FP_ROUND_TO_ZERO"))
          ((#.(lispify-k "FP_ROUND_TO_INF") "CL_FP_ROUND_TO_INF"))
          ((#.(lispify-k "FP_FMA") "CL_FP_FMA"))
          ((#.(lispify-k "FP_SOFT_FLOAT") "CL_FP_SOFT_FLOAT"))
          ((#.(lispify-k "FP_CORRECTLY_ROUNDED_DIVIDE_SQRT") "CL_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT")))

(constantenum #.(lispify "cl_device_mem_cache_type")
              ((#.(lispify-k "NONE") "CL_NONE"))
              ((#.(lispify-k "READ_ONLY_CACHE") "CL_READ_ONLY_CACHE"))
              ((#.(lispify-k "READ_WRITE_CACHE") "CL_READ_WRITE_CACHE")))

(constantenum #.(lispify "cl_device_local_mem_type")
              ((#.(lispify-k "LOCAL") "CL_LOCAL"))
              ((#.(lispify-k "GLOBAL") "CL_GLOBAL")))

(bitfield #.(lispify "cl_device_exec_capabilities")
          ((#.(lispify-k "EXEC_KERNEL") "CL_EXEC_KERNEL"))
          ((#.(lispify-k "EXEC_NATIVE_KERNEL") "CL_EXEC_NATIVE_KERNEL")))

(bitfield #.(lispify "cl_command_queue_properties")
          ((#.(lispify-k "QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE") "CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE"))
          ((#.(lispify-k "QUEUE_PROFILING_ENABLE") "CL_QUEUE_PROFILING_ENABLE"))
          ((#.(lispify-k "QUEUE_ON_DEVICE") "CL_QUEUE_ON_DEVICE"))
          ((#.(lispify-k "QUEUE_ON_DEVICE_DEFAULT") "CL_QUEUE_ON_DEVICE_DEFAULT")))

(constantenum #.(lispify "cl_context_info") 
              ((#.(lispify-k "CONTEXT_REFERENCE_COUNT") "CL_CONTEXT_REFERENCE_COUNT"))
              ((#.(lispify-k "CONTEXT_DEVICES") "CL_CONTEXT_DEVICES"))
              ((#.(lispify-k "CONTEXT_PROPERTIES") "CL_CONTEXT_PROPERTIES"))
              ((#.(lispify-k "CONTEXT_NUM_DEVICES") "CL_CONTEXT_NUM_DEVICES")))

(constantenum #.(lispify "cl_context_properties")
              ((#.(lispify-k "CONTEXT_PLATFORM") "CL_CONTEXT_PLATFORM"))
              ((#.(lispify-k "CONTEXT_INTEROP_USER_SYNC") "CL_CONTEXT_INTEROP_USER_SYNC")))

(constantenum #.(lispify "cl_device_partition_property")
              ((#.(lispify-k "DEVICE_PARTITION_EQUALLY") "CL_DEVICE_PARTITION_EQUALLY"))
              ((#.(lispify-k "DEVICE_PARTITION_BY_COUNTS") "CL_DEVICE_PARTITION_BY_COUNTS"))
              ((#.(lispify-k "DEVICE_PARTITION_BY_COUNTS_LIST_END") "CL_DEVICE_PARTITION_BY_COUNTS_LIST_END"))
              ((#.(lispify-k "DEVICE_PARTITION_BY_AFFINITY_DOMAIN") "CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN")))

(constantenum #.(lispify "cl_device_affinity_domain")
              ((#.(lispify-k "DEVICE_AFFINITY_DOMAIN_NUMA") "CL_DEVICE_AFFINITY_DOMAIN_NUMA"))
              ((#.(lispify-k "DEVICE_AFFINITY_DOMAIN_L4_CACHE") "CL_DEVICE_AFFINITY_DOMAIN_L4_CACHE"))
              ((#.(lispify-k "DEVICE_AFFINITY_DOMAIN_L3_CACHE") "CL_DEVICE_AFFINITY_DOMAIN_L3_CACHE"))
              ((#.(lispify-k "DEVICE_AFFINITY_DOMAIN_L2_CACHE") "CL_DEVICE_AFFINITY_DOMAIN_L2_CACHE"))
              ((#.(lispify-k "DEVICE_AFFINITY_DOMAIN_L1_CACHE") "CL_DEVICE_AFFINITY_DOMAIN_L1_CACHE"))
              ((#.(lispify-k "DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE") "CL_DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE")))

(constantenum #.(lispify "cl_device_svm_capabilities")
              ((#.(lispify-k "DEVICE_SVM_COARSE_GRAIN_BUFFER") "CL_DEVICE_SVM_COARSE_GRAIN_BUFFER"))
              ((#.(lispify-k "DEVICE_SVM_FINE_GRAIN_BUFFER") "CL_DEVICE_SVM_FINE_GRAIN_BUFFER"))
              ((#.(lispify-k "DEVICE_SVM_FINE_GRAIN_SYSTEM") "CL_DEVICE_SVM_FINE_GRAIN_SYSTEM"))
              ((#.(lispify-k "DEVICE_SVM_ATOMICS") "CL_DEVICE_SVM_ATOMICS")))

(constantenum #.(lispify "cl_command_queue_info")
              ((#.(lispify-k "QUEUE_CONTEXT") "CL_QUEUE_CONTEXT"))
              ((#.(lispify-k "QUEUE_DEVICE") "CL_QUEUE_DEVICE"))
              ((#.(lispify-k "QUEUE_REFERENCE_COUNT") "CL_QUEUE_REFERENCE_COUNT"))
              ((#.(lispify-k "QUEUE_PROPERTIES") "CL_QUEUE_PROPERTIES"))
              ((#.(lispify-k "QUEUE_SIZE") "CL_QUEUE_SIZE")))

(bitfield #.(lispify "cl_mem_flags")
          ((#.(lispify-k "MEM_READ_WRITE") "CL_MEM_READ_WRITE"))
          ((#.(lispify-k "MEM_WRITE_ONLY") "CL_MEM_WRITE_ONLY"))
          ((#.(lispify-k "MEM_READ_ONLY") "CL_MEM_READ_ONLY"))
          ((#.(lispify-k "MEM_USE_HOST_PTR") "CL_MEM_USE_HOST_PTR"))
          ((#.(lispify-k "MEM_ALLOC_HOST_PTR") "CL_MEM_ALLOC_HOST_PTR"))
          ((#.(lispify-k "MEM_COPY_HOST_PTR") "CL_MEM_COPY_HOST_PTR"))
          ;; reserved                                         (1 << 6)   
          ((#.(lispify-k "MEM_HOST_WRITE_ONLY") "CL_MEM_HOST_WRITE_ONLY"))
          ((#.(lispify-k "MEM_HOST_READ_ONLY") "CL_MEM_HOST_READ_ONLY"))
          ((#.(lispify-k "MEM_HOST_NO_ACCESS") "CL_MEM_HOST_NO_ACCESS"))
          ((#.(lispify-k "MEM_SVM_FINE_GRAIN_BUFFER") "CL_MEM_SVM_FINE_GRAIN_BUFFER"))
          ((#.(lispify-k "MEM_SVM_ATOMICS") "CL_MEM_SVM_ATOMICS"))
          ((#.(lispify-k "MEM_KERNEL_READ_AND_WRITE") "CL_MEM_KERNEL_READ_AND_WRITE")))

;; FIXME : duplicated --- cl_mem_flags
(bitfield #.(lispify "cl_svm_mem_flags")
          ((#.(lispify-k "MEM_READ_WRITE") "CL_MEM_READ_WRITE"))
          ((#.(lispify-k "MEM_WRITE_ONLY") "CL_MEM_WRITE_ONLY"))
          ((#.(lispify-k "MEM_READ_ONLY") "CL_MEM_READ_ONLY"))
          ((#.(lispify-k "MEM_USE_HOST_PTR") "CL_MEM_USE_HOST_PTR"))
          ((#.(lispify-k "MEM_ALLOC_HOST_PTR") "CL_MEM_ALLOC_HOST_PTR"))
          ((#.(lispify-k "MEM_COPY_HOST_PTR") "CL_MEM_COPY_HOST_PTR"))
          ;; reserved                                         (1 << 6)   
          ((#.(lispify-k "MEM_HOST_WRITE_ONLY") "CL_MEM_HOST_WRITE_ONLY"))
          ((#.(lispify-k "MEM_HOST_READ_ONLY") "CL_MEM_HOST_READ_ONLY"))
          ((#.(lispify-k "MEM_HOST_NO_ACCESS") "CL_MEM_HOST_NO_ACCESS"))
          ((#.(lispify-k "MEM_SVM_FINE_GRAIN_BUFFER") "CL_MEM_SVM_FINE_GRAIN_BUFFER"))
          ((#.(lispify-k "MEM_SVM_ATOMICS") "CL_MEM_SVM_ATOMICS"))
          ((#.(lispify-k "MEM_KERNEL_READ_AND_WRITE") "CL_MEM_KERNEL_READ_AND_WRITE")))

(bitfield #.(lispify "cl_mem_migration_flags")
          ((#.(lispify-k "MIGRATE_MEM_OBJECT_HOST") "CL_MIGRATE_MEM_OBJECT_HOST"))
          ((#.(lispify-k "MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED") "CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED")))

(constantenum #.(lispify "cl_channel_order")
              ((#.(lispify-k "R") "CL_R"))
              ((#.(lispify-k "A") "CL_A"))
              ((#.(lispify-k "RG") "CL_RG"))
              ((#.(lispify-k "RA") "CL_RA"))
              ((#.(lispify-k "RGB") "CL_RGB"))
              ((#.(lispify-k "RGBA") "CL_RGBA"))
              ((#.(lispify-k "BGRA") "CL_BGRA"))
              ((#.(lispify-k "ARGB") "CL_ARGB"))
              ((#.(lispify-k "INTENSITY") "CL_INTENSITY"))
              ((#.(lispify-k "LUMINANCE") "CL_LUMINANCE"))
              ((#.(lispify-k "Rx") "CL_Rx"))
              ((#.(lispify-k "RGx") "CL_RGx"))
              ((#.(lispify-k "RGBx") "CL_RGBx"))
              ((#.(lispify-k "DEPTH") "CL_DEPTH"))
              ((#.(lispify-k "DEPTH_STENCIL") "CL_DEPTH_STENCIL"))
              ((#.(lispify-k "sRGB") "CL_sRGB"))
              ((#.(lispify-k "sRGBx") "CL_sRGBx"))
              ((#.(lispify-k "sRGBA") "CL_sRGBA"))
              ((#.(lispify-k "sBGRA") "CL_sBGRA"))
              ((#.(lispify-k "ABGR") "CL_ABGR")))

(constantenum #.(lispify "cl_channel_type")
              ((#.(lispify-k "SNORM_INT8") "CL_SNORM_INT8"))
              ((#.(lispify-k "SNORM_INT16") "CL_SNORM_INT16"))
              ((#.(lispify-k "UNORM_INT8") "CL_UNORM_INT8"))
              ((#.(lispify-k "UNORM_INT16") "CL_UNORM_INT16"))
              ((#.(lispify-k "UNORM_SHORT_565") "CL_UNORM_SHORT_565"))
              ((#.(lispify-k "UNORM_SHORT_555") "CL_UNORM_SHORT_555"))
              ((#.(lispify-k "UNORM_INT_101010") "CL_UNORM_INT_101010"))
              ((#.(lispify-k "SIGNED_INT8") "CL_SIGNED_INT8"))
              ((#.(lispify-k "SIGNED_INT16") "CL_SIGNED_INT16"))
              ((#.(lispify-k "SIGNED_INT32") "CL_SIGNED_INT32"))
              ((#.(lispify-k "UNSIGNED_INT8") "CL_UNSIGNED_INT8"))
              ((#.(lispify-k "UNSIGNED_INT16") "CL_UNSIGNED_INT16"))
              ((#.(lispify-k "UNSIGNED_INT32") "CL_UNSIGNED_INT32"))
              ((#.(lispify-k "HALF_FLOAT") "CL_HALF_FLOAT"))
              ((#.(lispify-k "FLOAT") "CL_FLOAT"))
              ((#.(lispify-k "UNORM_INT24") "CL_UNORM_INT24")))

(constantenum #.(lispify "cl_mem_object_type")
              ((#.(lispify-k "MEM_OBJECT_BUFFER") "CL_MEM_OBJECT_BUFFER"))
              ((#.(lispify-k "MEM_OBJECT_IMAGE2D") "CL_MEM_OBJECT_IMAGE2D"))
              ((#.(lispify-k "MEM_OBJECT_IMAGE3D") "CL_MEM_OBJECT_IMAGE3D"))
              ((#.(lispify-k "MEM_OBJECT_IMAGE2D_ARRAY") "CL_MEM_OBJECT_IMAGE2D_ARRAY"))
              ((#.(lispify-k "MEM_OBJECT_IMAGE1D") "CL_MEM_OBJECT_IMAGE1D"))
              ((#.(lispify-k "MEM_OBJECT_IMAGE1D_ARRAY") "CL_MEM_OBJECT_IMAGE1D_ARRAY"))
              ((#.(lispify-k "MEM_OBJECT_IMAGE1D_BUFFER") "CL_MEM_OBJECT_IMAGE1D_BUFFER"))
              ((#.(lispify-k "MEM_OBJECT_PIPE") "CL_MEM_OBJECT_PIPE")))

(constantenum #.(lispify "cl_mem_info")
              ((#.(lispify-k "MEM_TYPE") "CL_MEM_TYPE"))
              ((#.(lispify-k "MEM_FLAGS") "CL_MEM_FLAGS"))
              ((#.(lispify-k "MEM_SIZE") "CL_MEM_SIZE"))
              ((#.(lispify-k "MEM_HOST_PTR") "CL_MEM_HOST_PTR"))
              ((#.(lispify-k "MEM_MAP_COUNT") "CL_MEM_MAP_COUNT"))
              ((#.(lispify-k "MEM_REFERENCE_COUNT") "CL_MEM_REFERENCE_COUNT"))
              ((#.(lispify-k "MEM_CONTEXT") "CL_MEM_CONTEXT"))
              ((#.(lispify-k "MEM_ASSOCIATED_MEMOBJECT") "CL_MEM_ASSOCIATED_MEMOBJECT"))
              ((#.(lispify-k "MEM_OFFSET") "CL_MEM_OFFSET"))
              ((#.(lispify-k "MEM_USES_SVM_POINTER") "CL_MEM_USES_SVM_POINTER")))

(constantenum #.(lispify "cl_image_info")
              ((#.(lispify-k "IMAGE_FORMAT") "CL_IMAGE_FORMAT"))
              ((#.(lispify-k "IMAGE_ELEMENT_SIZE") "CL_IMAGE_ELEMENT_SIZE"))
              ((#.(lispify-k "IMAGE_ROW_PITCH") "CL_IMAGE_ROW_PITCH"))
              ((#.(lispify-k "IMAGE_SLICE_PITCH") "CL_IMAGE_SLICE_PITCH"))
              ((#.(lispify-k "IMAGE_WIDTH") "CL_IMAGE_WIDTH"))
              ((#.(lispify-k "IMAGE_HEIGHT") "CL_IMAGE_HEIGHT"))
              ((#.(lispify-k "IMAGE_DEPTH") "CL_IMAGE_DEPTH"))
              ((#.(lispify-k "IMAGE_ARRAY_SIZE") "CL_IMAGE_ARRAY_SIZE"))
              ((#.(lispify-k "IMAGE_BUFFER") "CL_IMAGE_BUFFER"))
              ((#.(lispify-k "IMAGE_NUM_MIP_LEVELS") "CL_IMAGE_NUM_MIP_LEVELS"))
              ((#.(lispify-k "IMAGE_NUM_SAMPLES") "CL_IMAGE_NUM_SAMPLES")))

(constantenum #.(lispify "cl_pipe_info")
              ((#.(lispify-k "PIPE_PACKET_SIZE") "CL_PIPE_PACKET_SIZE"))
              ((#.(lispify-k "PIPE_MAX_PACKETS") "CL_PIPE_MAX_PACKETS")))

(constantenum #.(lispify "cl_addressing_mode")
              ((#.(lispify-k "ADDRESS_NONE") "CL_ADDRESS_NONE"))
              ((#.(lispify-k "ADDRESS_CLAMP_TO_EDGE") "CL_ADDRESS_CLAMP_TO_EDGE"))
              ((#.(lispify-k "ADDRESS_CLAMP") "CL_ADDRESS_CLAMP"))
              ((#.(lispify-k "ADDRESS_REPEAT") "CL_ADDRESS_REPEAT"))
              ((#.(lispify-k "ADDRESS_MIRRORED_REPEAT") "CL_ADDRESS_MIRRORED_REPEAT")))

(constantenum #.(lispify "cl_filter_mode")
              ((#.(lispify-k "FILTER_NEAREST") "CL_FILTER_NEAREST"))
              ((#.(lispify-k "FILTER_LINEAR") "CL_FILTER_LINEAR")))

(constantenum #.(lispify "cl_sampler_info")
              ((#.(lispify-k "SAMPLER_REFERENCE_COUNT") "CL_SAMPLER_REFERENCE_COUNT"))
              ((#.(lispify-k "SAMPLER_CONTEXT") "CL_SAMPLER_CONTEXT"))
              ((#.(lispify-k "SAMPLER_NORMALIZED_COORDS") "CL_SAMPLER_NORMALIZED_COORDS"))
              ((#.(lispify-k "SAMPLER_ADDRESSING_MODE") "CL_SAMPLER_ADDRESSING_MODE"))
              ((#.(lispify-k "SAMPLER_FILTER_MODE") "CL_SAMPLER_FILTER_MODE"))
              ((#.(lispify-k "SAMPLER_MIP_FILTER_MODE") "CL_SAMPLER_MIP_FILTER_MODE"))
              ((#.(lispify-k "SAMPLER_LOD_MIN") "CL_SAMPLER_LOD_MIN"))
              ((#.(lispify-k "SAMPLER_LOD_MAX") "CL_SAMPLER_LOD_MAX")))

(bitfield #.(lispify "cl_map_flags")
          ((#.(lispify-k "MAP_READ") "CL_MAP_READ"))
          ((#.(lispify-k "MAP_WRITE") "CL_MAP_WRITE"))
          ((#.(lispify-k "MAP_WRITE_INVALIDATE_REGION") "CL_MAP_WRITE_INVALIDATE_REGION")))

(constantenum #.(lispify "cl_program_info")
              ((#.(lispify-k "PROGRAM_REFERENCE_COUNT") "CL_PROGRAM_REFERENCE_COUNT"))
              ((#.(lispify-k "PROGRAM_CONTEXT") "CL_PROGRAM_CONTEXT"))
              ((#.(lispify-k "PROGRAM_NUM_DEVICES") "CL_PROGRAM_NUM_DEVICES"))
              ((#.(lispify-k "PROGRAM_DEVICES") "CL_PROGRAM_DEVICES"))
              ((#.(lispify-k "PROGRAM_SOURCE") "CL_PROGRAM_SOURCE"))
              ((#.(lispify-k "PROGRAM_BINARY_SIZES") "CL_PROGRAM_BINARY_SIZES"))
              ((#.(lispify-k "PROGRAM_BINARIES") "CL_PROGRAM_BINARIES"))
              ((#.(lispify-k "PROGRAM_NUM_KERNELS") "CL_PROGRAM_NUM_KERNELS"))
              ((#.(lispify-k "PROGRAM_KERNEL_NAMES") "CL_PROGRAM_KERNEL_NAMES")))

(constantenum #.(lispify "cl_program_build_info")
              ((#.(lispify-k "PROGRAM_BUILD_STATUS") "CL_PROGRAM_BUILD_STATUS"))
              ((#.(lispify-k "PROGRAM_BUILD_OPTIONS") "CL_PROGRAM_BUILD_OPTIONS"))
              ((#.(lispify-k "PROGRAM_BUILD_LOG") "CL_PROGRAM_BUILD_LOG"))
              ((#.(lispify-k "PROGRAM_BINARY_TYPE") "CL_PROGRAM_BINARY_TYPE"))
              ((#.(lispify-k "PROGRAM_BUILD_GLOBAL_VARIABLE_TOTAL_SIZE") "CL_PROGRAM_BUILD_GLOBAL_VARIABLE_TOTAL_SIZE")))

(constantenum #.(lispify "cl_program_binary_type")
              ((#.(lispify-k "PROGRAM_BINARY_TYPE_NONE") "CL_PROGRAM_BINARY_TYPE_NONE"))
              ((#.(lispify-k "PROGRAM_BINARY_TYPE_COMPILED_OBJECT") "CL_PROGRAM_BINARY_TYPE_COMPILED_OBJECT"))
              ((#.(lispify-k "PROGRAM_BINARY_TYPE_LIBRARY") "CL_PROGRAM_BINARY_TYPE_LIBRARY"))
              ((#.(lispify-k "PROGRAM_BINARY_TYPE_EXECUTABLE") "CL_PROGRAM_BINARY_TYPE_EXECUTABLE")))

(constantenum #.(lispify "cl_build_status")
              ((#.(lispify-k "BUILD_SUCCESS") "CL_BUILD_SUCCESS"))
              ((#.(lispify-k "BUILD_NONE") "CL_BUILD_NONE"))
              ((#.(lispify-k "BUILD_ERROR") "CL_BUILD_ERROR"))
              ((#.(lispify-k "BUILD_IN_PROGRESS") "CL_BUILD_IN_PROGRESS")))

(constantenum #.(lispify "cl_kernel_info")
              ((#.(lispify-k "KERNEL_FUNCTION_NAME") "CL_KERNEL_FUNCTION_NAME"))
              ((#.(lispify-k "KERNEL_NUM_ARGS") "CL_KERNEL_NUM_ARGS"))
              ((#.(lispify-k "KERNEL_REFERENCE_COUNT") "CL_KERNEL_REFERENCE_COUNT"))
              ((#.(lispify-k "KERNEL_CONTEXT") "CL_KERNEL_CONTEXT"))
              ((#.(lispify-k "KERNEL_PROGRAM") "CL_KERNEL_PROGRAM"))
              ((#.(lispify-k "KERNEL_ATTRIBUTES") "CL_KERNEL_ATTRIBUTES")))

(constantenum #.(lispify "cl_kernel_arg_info")
              ((#.(lispify-k "KERNEL_ARG_ADDRESS_QUALIFIER") "CL_KERNEL_ARG_ADDRESS_QUALIFIER"))
              ((#.(lispify-k "KERNEL_ARG_ACCESS_QUALIFIER") "CL_KERNEL_ARG_ACCESS_QUALIFIER"))
              ((#.(lispify-k "KERNEL_ARG_TYPE_NAME") "CL_KERNEL_ARG_TYPE_NAME"))
              ((#.(lispify-k "KERNEL_ARG_TYPE_QUALIFIER") "CL_KERNEL_ARG_TYPE_QUALIFIER"))
              ((#.(lispify-k "KERNEL_ARG_NAME") "CL_KERNEL_ARG_NAME")))

(constantenum #.(lispify "cl_kernel_arg_address_qualifier")
              ((#.(lispify-k "KERNEL_ARG_ADDRESS_GLOBAL") "CL_KERNEL_ARG_ADDRESS_GLOBAL"))
              ((#.(lispify-k "KERNEL_ARG_ADDRESS_LOCAL") "CL_KERNEL_ARG_ADDRESS_LOCAL"))
              ((#.(lispify-k "KERNEL_ARG_ADDRESS_CONSTANT") "CL_KERNEL_ARG_ADDRESS_CONSTANT"))
              ((#.(lispify-k "KERNEL_ARG_ADDRESS_PRIVATE") "CL_KERNEL_ARG_ADDRESS_PRIVATE")))

(constantenum #.(lispify "cl_kernel_arg_access_qualifier")
              ((#.(lispify-k "KERNEL_ARG_ACCESS_READ_ONLY") "CL_KERNEL_ARG_ACCESS_READ_ONLY"))
              ((#.(lispify-k "KERNEL_ARG_ACCESS_WRITE_ONLY") "CL_KERNEL_ARG_ACCESS_WRITE_ONLY"))
              ((#.(lispify-k "KERNEL_ARG_ACCESS_READ_WRITE") "CL_KERNEL_ARG_ACCESS_READ_WRITE"))
              ((#.(lispify-k "KERNEL_ARG_ACCESS_NONE") "CL_KERNEL_ARG_ACCESS_NONE")))

(constantenum #.(lispify "cl_kernel_arg_type_qualifer")
              ((#.(lispify-k "KERNEL_ARG_TYPE_NONE") "CL_KERNEL_ARG_TYPE_NONE"))
              ((#.(lispify-k "KERNEL_ARG_TYPE_CONST") "CL_KERNEL_ARG_TYPE_CONST"))
              ((#.(lispify-k "KERNEL_ARG_TYPE_RESTRICT") "CL_KERNEL_ARG_TYPE_RESTRICT"))
              ((#.(lispify-k "KERNEL_ARG_TYPE_VOLATILE") "CL_KERNEL_ARG_TYPE_VOLATILE"))
              ((#.(lispify-k "KERNEL_ARG_TYPE_PIPE") "CL_KERNEL_ARG_TYPE_PIPE")))

(constantenum #.(lispify "cl_kernel_work_group_info")
              ((#.(lispify-k "KERNEL_WORK_GROUP_SIZE") "CL_KERNEL_WORK_GROUP_SIZE"))
              ((#.(lispify-k "KERNEL_COMPILE_WORK_GROUP_SIZE") "CL_KERNEL_COMPILE_WORK_GROUP_SIZE"))
              ((#.(lispify-k "KERNEL_LOCAL_MEM_SIZE") "CL_KERNEL_LOCAL_MEM_SIZE"))
              ((#.(lispify-k "KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE") "CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE"))
              ((#.(lispify-k "KERNEL_PRIVATE_MEM_SIZE") "CL_KERNEL_PRIVATE_MEM_SIZE"))
              ((#.(lispify-k "KERNEL_GLOBAL_WORK_SIZE") "CL_KERNEL_GLOBAL_WORK_SIZE")))

(constantenum #.(lispify "cl_kernel_exec_info")
              ((#.(lispify-k "KERNEL_EXEC_INFO_SVM_PTRS") "CL_KERNEL_EXEC_INFO_SVM_PTRS"))
              ((#.(lispify-k "KERNEL_EXEC_INFO_SVM_FINE_GRAIN_SYSTEM") "CL_KERNEL_EXEC_INFO_SVM_FINE_GRAIN_SYSTEM")))

(constantenum #.(lispify "cl_event_info") 
              ((#.(lispify-k "EVENT_COMMAND_QUEUE") "CL_EVENT_COMMAND_QUEUE"))
              ((#.(lispify-k "EVENT_COMMAND_TYPE") "CL_EVENT_COMMAND_TYPE"))
              ((#.(lispify-k "EVENT_REFERENCE_COUNT") "CL_EVENT_REFERENCE_COUNT"))
              ((#.(lispify-k "EVENT_COMMAND_EXECUTION_STATUS") "CL_EVENT_COMMAND_EXECUTION_STATUS"))
              ((#.(lispify-k "EVENT_CONTEXT") "CL_EVENT_CONTEXT")))

(constantenum #.(lispify "cl_command_type")
              ((#.(lispify-k "COMMAND_NDRANGE_KERNEL") "CL_COMMAND_NDRANGE_KERNEL"))
              ((#.(lispify-k "COMMAND_TASK") "CL_COMMAND_TASK"))
              ((#.(lispify-k "COMMAND_NATIVE_KERNEL") "CL_COMMAND_NATIVE_KERNEL"))
              ((#.(lispify-k "COMMAND_READ_BUFFER") "CL_COMMAND_READ_BUFFER"))
              ((#.(lispify-k "COMMAND_WRITE_BUFFER") "CL_COMMAND_WRITE_BUFFER"))
              ((#.(lispify-k "COMMAND_COPY_BUFFER") "CL_COMMAND_COPY_BUFFER"))
              ((#.(lispify-k "COMMAND_READ_IMAGE") "CL_COMMAND_READ_IMAGE"))
              ((#.(lispify-k "COMMAND_WRITE_IMAGE") "CL_COMMAND_WRITE_IMAGE"))
              ((#.(lispify-k "COMMAND_COPY_IMAGE") "CL_COMMAND_COPY_IMAGE"))
              ((#.(lispify-k "COMMAND_COPY_IMAGE_TO_BUFFER") "CL_COMMAND_COPY_IMAGE_TO_BUFFER"))
              ((#.(lispify-k "COMMAND_COPY_BUFFER_TO_IMAGE") "CL_COMMAND_COPY_BUFFER_TO_IMAGE"))
              ((#.(lispify-k "COMMAND_MAP_BUFFER") "CL_COMMAND_MAP_BUFFER"))
              ((#.(lispify-k "COMMAND_MAP_IMAGE") "CL_COMMAND_MAP_IMAGE"))
              ((#.(lispify-k "COMMAND_UNMAP_MEM_OBJECT") "CL_COMMAND_UNMAP_MEM_OBJECT"))
              ((#.(lispify-k "COMMAND_MARKER") "CL_COMMAND_MARKER"))
              ((#.(lispify-k "COMMAND_ACQUIRE_GL_OBJECTS") "CL_COMMAND_ACQUIRE_GL_OBJECTS"))
              ((#.(lispify-k "COMMAND_RELEASE_GL_OBJECTS") "CL_COMMAND_RELEASE_GL_OBJECTS"))
              ((#.(lispify-k "COMMAND_READ_BUFFER_RECT") "CL_COMMAND_READ_BUFFER_RECT"))
              ((#.(lispify-k "COMMAND_WRITE_BUFFER_RECT") "CL_COMMAND_WRITE_BUFFER_RECT"))
              ((#.(lispify-k "COMMAND_COPY_BUFFER_RECT") "CL_COMMAND_COPY_BUFFER_RECT"))
              ((#.(lispify-k "COMMAND_USER") "CL_COMMAND_USER"))
              ((#.(lispify-k "COMMAND_BARRIER") "CL_COMMAND_BARRIER"))
              ((#.(lispify-k "COMMAND_MIGRATE_MEM_OBJECTS") "CL_COMMAND_MIGRATE_MEM_OBJECTS"))
              ((#.(lispify-k "COMMAND_FILL_BUFFER") "CL_COMMAND_FILL_BUFFER"))
              ((#.(lispify-k "COMMAND_FILL_IMAGE") "CL_COMMAND_FILL_IMAGE"))
              ((#.(lispify-k "COMMAND_SVM_FREE") "CL_COMMAND_SVM_FREE"))
              ((#.(lispify-k "COMMAND_SVM_MEMCPY") "CL_COMMAND_SVM_MEMCPY"))
              ((#.(lispify-k "COMMAND_SVM_MEMFILL") "CL_COMMAND_SVM_MEMFILL"))
              ((#.(lispify-k "COMMAND_SVM_MAP") "CL_COMMAND_SVM_MAP"))
              ((#.(lispify-k "COMMAND_SVM_UNMAP") "CL_COMMAND_SVM_UNMAP")))

(constantenum command-execution-status
              ((#.(lispify-k "COMPLETE") "CL_COMPLETE"))
              ((#.(lispify-k "RUNNING") "CL_RUNNING"))
              ((#.(lispify-k "SUBMITTED") "CL_SUBMITTED"))
              ((#.(lispify-k "QUEUED") "CL_QUEUED")))

(constantenum #.(lispify "cl_buffer_create_type") 
              ((#.(lispify-k "BUFFER_CREATE_TYPE_REGION") "CL_BUFFER_CREATE_TYPE_REGION")))

(constantenum #.(lispify "cl_profiling_info") 
              ((#.(lispify-k "PROFILING_COMMAND_QUEUED") "CL_PROFILING_COMMAND_QUEUED"))
              ((#.(lispify-k "PROFILING_COMMAND_SUBMIT") "CL_PROFILING_COMMAND_SUBMIT"))
              ((#.(lispify-k "PROFILING_COMMAND_START") "CL_PROFILING_COMMAND_START"))
              ((#.(lispify-k "PROFILING_COMMAND_END") "CL_PROFILING_COMMAND_END"))
              ((#.(lispify-k "PROFILING_COMMAND_COMPLETE") "CL_PROFILING_COMMAND_COMPLETE")))

