class APPLICATION

create
	make

feature {NONE} -- Initialization

	make
		local
			cif: FFI_CIF_STRUCT_API
			args: ARRAY [POINTER]

			func: FFI_FUNCTIONS
			cstr: C_STRING
			rc: NATURAL
			mp: MANAGED_POINTER
			values: ARRAY [POINTER]
			ptr: POINTER
		do
--			example

				-- Initialize the argument info vector
--			args := <<create{FFI_TYPE_STRUCT_API}.make_by_pointer ({FFI_TYPES}.ffi_type_pointer)>>
			args := <<{FFI_TYPES}.ffi_type_pointer>>

				-- Initialize the cif
			create cif.make


			create func
			if func.ffi_prep_cif (cif, {FFI_CONSTANTS}.FFI_DEFAULT_ABI, 1, {FFI_TYPES}.ffi_type_sint , args) = {FFI_STATUS_ENUM_API}.ffi_ok then
				create cstr.make ("Hello from Eiffel")
				ptr := cstr.item
				create mp.make ({PLATFORM}.pointer_bytes)
				mp.put_pointer ($ptr, 0)
				func.ffi_call (cif, my_function, $rc, mp.item)

				create cstr.make ("This is a new message")
				ptr := cstr.item
				mp.put_pointer ($ptr, 0)

				func.ffi_call (cif, my_function, $rc, mp.item)

			end
		end


	my_function: POINTER
		external "C inline"
		alias "puts"
		end



--     #include <stdio.h>
--     #include <ffi.h>
--
--     int main()
--     {
--       ffi_cif cif;
--       ffi_type *args[1];
--       void *values[1];
--       char *s;
--       int rc;
--
--       /* Initialize the argument info vectors */
--       args[0] = &ffi_type_pointer;
--       values[0] = &s;
--
--       /* Initialize the cif */
--       if (ffi_prep_cif(&cif, FFI_DEFAULT_ABI, 1,
--     		       &ffi_type_uint, args) == FFI_OK)
--         {
--           s = "Hello World!";
--           ffi_call(&cif, puts, &rc, values);
--           /* rc now holds the result of the call to puts */
--
--           /* values holds a pointer to the function's arg, so to
--              call puts() again all we need to do is change the
--              value of s */
--           s = "This is cool!";
--           ffi_call(&cif, puts, &rc, values);
--         }
--
--       return 0;
--     }

	example
		external
			"C inline use <ffi.h>"
		alias
			"[
			
	       ffi_cif cif;
	       ffi_type *args[1];
	       void *values[1];
	       char *s;
	       int rc;
	
	       /* Initialize the argument info vectors */
	       args[0] = &ffi_type_pointer;
	       values[0] = &s;
	
	      /* Initialize the cif */
	       if (ffi_prep_cif(&cif, FFI_DEFAULT_ABI, 1,
     		       &ffi_type_uint, args) == FFI_OK)
         {
           s = "Hello World!";
           ffi_call(&cif, puts, &rc, values);
           /* rc now holds the result of the call to puts */

           /* values holds a pointer to the function's arg, so to
              call puts() again all we need to do is change the
              value of s */
           s = "This is cool!";
           ffi_call(&cif, puts, &rc, values);
         }


		]"
		end

end
