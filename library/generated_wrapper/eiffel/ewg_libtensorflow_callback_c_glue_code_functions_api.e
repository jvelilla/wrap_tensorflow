note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class EWG_LIBTENSORFLOW_CALLBACK_C_GLUE_CODE_FUNCTIONS_API


feature -- Access

	get_void_voidp_size_t_voidp_anonymous_callback_stub: POINTER
		external
			"C inline use <ewg_libtensorflow_callback_c_glue_code.h>"
		alias
			"[
				return get_void_voidp_size_t_voidp_anonymous_callback_stub ();
			]"
		end

	set_void_voidp_size_t_voidp_anonymous_callback_entry (a_class: VOID_VOIDP_SIZE_T_VOIDP_ANONYMOUS_CALLBACK_DISPATCHER; a_feature: POINTER) 
		do
			c_set_void_voidp_size_t_voidp_anonymous_callback_entry (a_class, a_feature)
		end

	call_void_voidp_size_t_voidp_anonymous_callback (a_function: POINTER; data: POINTER; len: INTEGER; arg: POINTER) 
		do
			c_call_void_voidp_size_t_voidp_anonymous_callback (a_function, data, len, arg)
		end

	get_void_charconstp_anonymous_callback_stub: POINTER
		external
			"C inline use <ewg_libtensorflow_callback_c_glue_code.h>"
		alias
			"[
				return get_void_charconstp_anonymous_callback_stub ();
			]"
		end

	set_void_charconstp_anonymous_callback_entry (a_class: VOID_CHARCONSTP_ANONYMOUS_CALLBACK_DISPATCHER; a_feature: POINTER) 
		do
			c_set_void_charconstp_anonymous_callback_entry (a_class, a_feature)
		end

	call_void_charconstp_anonymous_callback (a_function: POINTER; anonymous_2: STRING) 
		local
			anonymous_2_c_string: C_STRING
		do
			create anonymous_2_c_string.make (anonymous_2)
			c_call_void_charconstp_anonymous_callback (a_function, anonymous_2_c_string.item)
		end

	get_void_voidp_size_t_anonymous_callback_stub: POINTER
		external
			"C inline use <ewg_libtensorflow_callback_c_glue_code.h>"
		alias
			"[
				return get_void_voidp_size_t_anonymous_callback_stub ();
			]"
		end

	set_void_voidp_size_t_anonymous_callback_entry (a_class: VOID_VOIDP_SIZE_T_ANONYMOUS_CALLBACK_DISPATCHER; a_feature: POINTER) 
		do
			c_set_void_voidp_size_t_anonymous_callback_entry (a_class, a_feature)
		end

	call_void_voidp_size_t_anonymous_callback (a_function: POINTER; data: POINTER; length: INTEGER) 
		do
			c_call_void_voidp_size_t_anonymous_callback (a_function, data, length)
		end

feature -- Externals

	c_set_void_voidp_size_t_voidp_anonymous_callback_entry (a_class: VOID_VOIDP_SIZE_T_VOIDP_ANONYMOUS_CALLBACK_DISPATCHER; a_feature: POINTER)
		external
			"C inline use <ewg_libtensorflow_callback_c_glue_code.h>"
		alias
			"[
				set_void_voidp_size_t_voidp_anonymous_callback_entry ((void*)$a_class, (void*)$a_feature);
			]"
		end

	c_call_void_voidp_size_t_voidp_anonymous_callback (a_function: POINTER; data: POINTER; len: INTEGER; arg: POINTER)
		external
			"C inline use <ewg_libtensorflow_callback_c_glue_code.h>"
		alias
			"[
				call_void_voidp_size_t_voidp_anonymous_callback ((void*)$a_function, (void*)$data, (size_t)$len, (void*)$arg);
			]"
		end

	c_set_void_charconstp_anonymous_callback_entry (a_class: VOID_CHARCONSTP_ANONYMOUS_CALLBACK_DISPATCHER; a_feature: POINTER)
		external
			"C inline use <ewg_libtensorflow_callback_c_glue_code.h>"
		alias
			"[
				set_void_charconstp_anonymous_callback_entry ((void*)$a_class, (void*)$a_feature);
			]"
		end

	c_call_void_charconstp_anonymous_callback (a_function: POINTER; anonymous_1: POINTER)
		external
			"C inline use <ewg_libtensorflow_callback_c_glue_code.h>"
		alias
			"[
				call_void_charconstp_anonymous_callback ((void*)$a_function, (char const*)$anonymous_1);
			]"
		end

	c_set_void_voidp_size_t_anonymous_callback_entry (a_class: VOID_VOIDP_SIZE_T_ANONYMOUS_CALLBACK_DISPATCHER; a_feature: POINTER)
		external
			"C inline use <ewg_libtensorflow_callback_c_glue_code.h>"
		alias
			"[
				set_void_voidp_size_t_anonymous_callback_entry ((void*)$a_class, (void*)$a_feature);
			]"
		end

	c_call_void_voidp_size_t_anonymous_callback (a_function: POINTER; data: POINTER; length: INTEGER)
		external
			"C inline use <ewg_libtensorflow_callback_c_glue_code.h>"
		alias
			"[
				call_void_voidp_size_t_anonymous_callback ((void*)$a_function, (void*)$data, (size_t)$length);
			]"
		end

feature -- Externals Address

end