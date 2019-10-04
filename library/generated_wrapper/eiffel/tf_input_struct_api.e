note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class TF_INPUT_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	oper: detachable TF_OPERATION_STRUCT_API 
			-- Access member `oper`
		require
			exists: exists
		do
			if attached c_oper (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_oper (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_oper (item) 
		end

	set_oper (a_value: TF_OPERATION_STRUCT_API) 
			-- Set member `oper`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_oper (item, a_value.item)
		ensure
			oper_set: attached oper as l_value implies l_value.item = a_value.item
		end

	index: INTEGER
			-- Access member `index`
		require
			exists: exists
		do
			Result := c_index (item)
		ensure
			result_correct: Result = c_index (item)
		end

	set_index (a_value: INTEGER) 
			-- Change the value of member `index` to `a_value`.
		require
			exists: exists
		do
			set_c_index (item, a_value)
		ensure
			index_set: a_value = index
		end

feature {NONE} -- Implementation wrapper for struct struct TF_Input

	sizeof_external: INTEGER 
		external
			"C inline use <c_api.h>"
		alias
			"sizeof(struct TF_Input)"
		end

	c_oper (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <c_api.h>"
		alias
			"[
				((struct TF_Input*)$an_item)->oper
			]"
		end

	set_c_oper (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <c_api.h>"
		alias
			"[
				((struct TF_Input*)$an_item)->oper =  (TF_Operation*)$a_value
			]"
		ensure
			oper_set: a_value = c_oper (an_item)
		end

	c_index (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <c_api.h>"
		alias
			"[
				((struct TF_Input*)$an_item)->index
			]"
		end

	set_c_index (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <c_api.h>"
		alias
			"[
				((struct TF_Input*)$an_item)->index =  (int)$a_value
			]"
		ensure
			index_set: a_value = c_index (an_item)
		end

end
