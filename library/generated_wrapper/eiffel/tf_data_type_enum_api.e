-- enum wrapper
class TF_DATA_TYPE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = tf_float or a_value = tf_double or a_value = tf_int32 or a_value = tf_uint8 or a_value = tf_int16 or a_value = tf_int8 or a_value = tf_string or a_value = tf_complex64 or a_value = tf_complex or a_value = tf_int64 or a_value = tf_bool or a_value = tf_qint8 or a_value = tf_quint8 or a_value = tf_qint32 or a_value = tf_bfloat16 or a_value = tf_qint16 or a_value = tf_quint16 or a_value = tf_uint16 or a_value = tf_complex128 or a_value = tf_half or a_value = tf_resource or a_value = tf_variant or a_value = tf_uint32 or a_value = tf_uint64
		end

	tf_float: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_FLOAT"
		end

	tf_double: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_DOUBLE"
		end

	tf_int32: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_INT32"
		end

	tf_uint8: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_UINT8"
		end

	tf_int16: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_INT16"
		end

	tf_int8: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_INT8"
		end

	tf_string: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_STRING"
		end

	tf_complex64: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_COMPLEX64"
		end

	tf_complex: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_COMPLEX"
		end

	tf_int64: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_INT64"
		end

	tf_bool: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_BOOL"
		end

	tf_qint8: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_QINT8"
		end

	tf_quint8: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_QUINT8"
		end

	tf_qint32: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_QINT32"
		end

	tf_bfloat16: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_BFLOAT16"
		end

	tf_qint16: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_QINT16"
		end

	tf_quint16: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_QUINT16"
		end

	tf_uint16: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_UINT16"
		end

	tf_complex128: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_COMPLEX128"
		end

	tf_half: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_HALF"
		end

	tf_resource: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_RESOURCE"
		end

	tf_variant: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_VARIANT"
		end

	tf_uint32: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_UINT32"
		end

	tf_uint64: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_UINT64"
		end

end
