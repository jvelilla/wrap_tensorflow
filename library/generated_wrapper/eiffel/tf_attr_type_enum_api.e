-- enum wrapper
class TF_ATTR_TYPE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = tf_attr_string or a_value = tf_attr_int or a_value = tf_attr_float or a_value = tf_attr_bool or a_value = tf_attr_type or a_value = tf_attr_shape or a_value = tf_attr_tensor or a_value = tf_attr_placeholder or a_value = tf_attr_func
		end

	tf_attr_string: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ATTR_STRING"
		end

	tf_attr_int: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ATTR_INT"
		end

	tf_attr_float: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ATTR_FLOAT"
		end

	tf_attr_bool: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ATTR_BOOL"
		end

	tf_attr_type: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ATTR_TYPE"
		end

	tf_attr_shape: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ATTR_SHAPE"
		end

	tf_attr_tensor: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ATTR_TENSOR"
		end

	tf_attr_placeholder: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ATTR_PLACEHOLDER"
		end

	tf_attr_func: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ATTR_FUNC"
		end

end
