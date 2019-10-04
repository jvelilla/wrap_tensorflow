class APPLICATION

inherit

	TENSORFLOW_API

create
	make

feature -- Initialization

	make
		local
			l_graph_path: PATH
			l_graph: TF_GRAPH_STRUCT_API
			l_status: TF_STATUS_STRUCT_API
			l_opts: TF_IMPORT_GRAPH_DEF_OPTIONS_STRUCT_API
		do
			create l_graph_path.make_current
			l_graph_path := l_graph_path.extended ("..").extended("graph.pb")
			if attached {TF_BUFFER_STRUCT_API} read_buffer_from_file (l_graph_path) as l_buffer  then
				l_graph := tf_new_graph
				l_status := tf_new_status
				l_opts:= tf_new_import_graph_def_options

				if l_graph /= Void and then l_status /= Void and then l_opts /= Void then
					tf_graph_import_graph_def (l_graph, l_buffer, l_opts, l_status)
					if tf_get_code (l_status) = {TF_CODE_ENUM_API}.tf_ok then
						print ("%NLoad graph success")
					else
						print ("%Can't load graph")
					end
					tf_delete_graph (l_graph)
					tf_delete_status (l_status)
					tf_delete_import_graph_def_options (l_opts)
				end
				tf_delete_buffer (l_buffer)
			end
		end


	read_buffer_from_file (a_path: PATH): detachable TF_BUFFER_STRUCT_API
		local
			l_file: RAW_FILE
			l_data : C_STRING
		do
			create l_file.make_with_path (a_path)
			l_file.open_read
			if l_file.exists then
				l_file.read_stream (l_file.count)
				create l_data.make (l_file.last_string.twin)
				create Result.make
				Result.set_data (l_data.item)
				Result.set_length (l_file.count)
			end
		end


end
