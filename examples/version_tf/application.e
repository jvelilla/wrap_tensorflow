class APPLICATION

inherit

	TENSORFLOW_API

create
	make

feature -- Initialization

	make
		do
			print ("%NTensorFlow Version: " +  version)
		end
end
