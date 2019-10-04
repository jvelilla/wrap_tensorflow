-- enum wrapper
class TF_CODE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = tf_ok or a_value = tf_cancelled or a_value = tf_unknown or a_value = tf_invalid_argument or a_value = tf_deadline_exceeded or a_value = tf_not_found or a_value = tf_already_exists or a_value = tf_permission_denied or a_value = tf_unauthenticated or a_value = tf_resource_exhausted or a_value = tf_failed_precondition or a_value = tf_aborted or a_value = tf_out_of_range or a_value = tf_unimplemented or a_value = tf_internal or a_value = tf_unavailable or a_value = tf_data_loss
		end

	tf_ok: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_OK"
		end

	tf_cancelled: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_CANCELLED"
		end

	tf_unknown: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_UNKNOWN"
		end

	tf_invalid_argument: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_INVALID_ARGUMENT"
		end

	tf_deadline_exceeded: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_DEADLINE_EXCEEDED"
		end

	tf_not_found: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_NOT_FOUND"
		end

	tf_already_exists: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ALREADY_EXISTS"
		end

	tf_permission_denied: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_PERMISSION_DENIED"
		end

	tf_unauthenticated: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_UNAUTHENTICATED"
		end

	tf_resource_exhausted: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_RESOURCE_EXHAUSTED"
		end

	tf_failed_precondition: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_FAILED_PRECONDITION"
		end

	tf_aborted: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_ABORTED"
		end

	tf_out_of_range: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_OUT_OF_RANGE"
		end

	tf_unimplemented: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_UNIMPLEMENTED"
		end

	tf_internal: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_INTERNAL"
		end

	tf_unavailable: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_UNAVAILABLE"
		end

	tf_data_loss: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"TF_DATA_LOSS"
		end

end
