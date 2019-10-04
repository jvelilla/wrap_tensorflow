note
	description: "Summary description for {TENSORFLOW_API}."
	date: "$Date$"
	revision: "$Revision$"

class
	TENSORFLOW_API

inherit

	TENSORFLOW_FUNCTIONS_API


feature -- Access

	version: STRING
			-- Tensorflow version
		do
			if tf_version /= default_pointer then
				Result := (create {C_STRING}.make_by_pointer (tf_version)).string
			else
				Result := "Unkown"
			end
		end


	tf_new_while (g: TF_GRAPH_STRUCT_API; inputs: TF_OUTPUT_STRUCT_API; ninputs: INTEGER; status: TF_STATUS_STRUCT_API): detachable TF_WHILE_PARAMS_STRUCT_API
		do
			if attached c_tf_new_while (g.item, inputs.item, ninputs, status.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end


feature {NONE} -- Externals

	c_tf_new_while (g: POINTER; inputs: POINTER; ninputs: INTEGER; status: POINTER): POINTER
		external
			"C inline use <c_api.h>"

		alias
			"[
				//TF_WhileParams result = (TF_WhileParams*) malloc (sizeof(TF_WhileParams));
				TF_WhileParams result = TF_NewWhile ((TF_Graph*)$g, (TF_Output*)$inputs, (int)$ninputs, (TF_Status*)$status);
				return &result;
			]"
		end
end
