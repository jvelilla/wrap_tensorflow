class APPLICATION

inherit

	TENSORFLOW_API

create
	make

feature -- Initialization

	make
		local
			val: ARRAY [REAL]
			tensor: TF_TENSOR_STRUCT_API
			dims: ARRAY [INTEGER_64]
			data: ARRAY [REAL]
			data_size: INTEGER
			mp: MANAGED_POINTER
			l_ptr: POINTER
			l_data: MANAGED_POINTER
			l_tensor_data: ARRAY [REAL]
			index: INTEGER
			i: INTEGER
		do
			dims := {ARRAY [INTEGER_64]}<<1, 5, 12>>
			data_size := {PLATFORM}.real_32_bytes
			across dims as ic  loop
				data_size := (data_size * ic.item).to_integer_32
			end
			val := {ARRAY [REAL]} <<-0.4809832, -0.3770838, 0.1743573, 0.7720509, -0.4064746, 0.0116595, 0.0051413, 0.9135732, 0.7197526, -0.0400658, 0.1180671, -0.6829428,
					    -0.4810135, -0.3772099, 0.1745346, 0.7719303, -0.4066443, 0.0114614, 0.0051195, 0.9135003, 0.7196983, -0.0400035, 0.1178188, -0.6830465,
					    -0.4809143, -0.3773398, 0.1746384, 0.7719052, -0.4067171, 0.0111654, 0.0054433, 0.9134697, 0.7192584, -0.0399981, 0.1177435, -0.6835230,
					    -0.4808300, -0.3774327, 0.1748246, 0.7718700, -0.4070232, 0.0109549, 0.0059128, 0.9133330, 0.7188759, -0.0398740, 0.1181437, -0.6838635,
					    -0.4807833, -0.3775733, 0.1748378, 0.7718275, -0.4073670, 0.0107582, 0.0062978, 0.9131795, 0.7187147, -0.0394935, 0.1184392, -0.6840039
					    >>

			create mp.make (data_size)
			across val as ic loop
				mp.put_real_32 (ic.item, (ic.cursor_index - 1)*{PLATFORM}.real_32_bytes)
			end

			tensor := tf_new_tensor ({TF_DATA_TYPE_ENUM_API}.tf_float, dims.area.base_address, dims.count, mp.item, data_size, default_pointer, default_pointer)

			if tensor = Void then
				print ("Wrong creae tensor")
				{EXCEPTIONS}.die (1)
			end

			if tf_tensor_type (tensor) /= {TF_DATA_TYPE_ENUM_API}.tf_float  then
				print ("Wrong tensor type")
				{EXCEPTIONS}.die (1)
			end

			if tf_num_dims (tensor) /= dims.count then
				print ("Wrong number of dimensions")
				{EXCEPTIONS}.die (1)
			end

			across dims as ic loop
				if tf_dim (tensor, ic.cursor_index - 1) /=  ic.item then
					print ("Wrong dimension size for dim")
					{EXCEPTIONS}.die (1)

				end
			end

			if tf_tensor_byte_size (tensor) /= data_size then
				print ("Wrong tensor byte size")
				{EXCEPTIONS}.die (1)

			end

			l_ptr := tf_tensor_data (tensor)
			if l_ptr /= default_pointer then
				create l_data.make_from_pointer (l_ptr, data_size)
				create l_tensor_data.make_filled (0.0, 1, data_size // {PLATFORM}.real_32_bytes)
				from
					index := 0
					i := 1
				until
					index = data_size
				loop
					l_tensor_data.put (l_data.read_real_32(index), i)
					index :=  index + {PLATFORM}.real_32_bytes
					i := i + 1
				end


				across l_tensor_data as ic loop
					if ic.item.ieee_is_equal (val [ic.cursor_index]) then
					else
						print ("does not match")
						{EXCEPTIONS}.die (1)
					end
				end
				print ("Tensor created successfuly")

			else
				print ("Wrong tensor data")
				{EXCEPTIONS}.die (1)
			end
  		end




end
