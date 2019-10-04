#include <ewg_eiffel.h>
#include <ewg_libtensorflow_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
struct void_voidp_size_t_voidp_anonymous_callback_entry_struct void_voidp_size_t_voidp_anonymous_callback_entry = {NULL, NULL};

void void_voidp_size_t_voidp_anonymous_callback_stub (void *data, size_t len, void *arg)
{
	if (void_voidp_size_t_voidp_anonymous_callback_entry.a_class != NULL && void_voidp_size_t_voidp_anonymous_callback_entry.feature != NULL)
	{
		void_voidp_size_t_voidp_anonymous_callback_entry.feature (eif_access(void_voidp_size_t_voidp_anonymous_callback_entry.a_class), data, len, arg);
	}
}

void set_void_voidp_size_t_voidp_anonymous_callback_entry (void* a_class, void* a_feature)
{
	void_voidp_size_t_voidp_anonymous_callback_entry.a_class = eif_adopt(a_class);
	void_voidp_size_t_voidp_anonymous_callback_entry.feature = (void_voidp_size_t_voidp_anonymous_callback_eiffel_feature) a_feature;
}

void* get_void_voidp_size_t_voidp_anonymous_callback_stub ()
{
	return (void*) void_voidp_size_t_voidp_anonymous_callback_stub;
}

void call_void_voidp_size_t_voidp_anonymous_callback (void *a_function, void *data, size_t len, void *arg)
{
	((void (*) (void *data, size_t len, void *arg))a_function) (data, len, arg);
}

struct void_charconstp_anonymous_callback_entry_struct void_charconstp_anonymous_callback_entry = {NULL, NULL};

void void_charconstp_anonymous_callback_stub (char const *anonymous_1)
{
	if (void_charconstp_anonymous_callback_entry.a_class != NULL && void_charconstp_anonymous_callback_entry.feature != NULL)
	{
		void_charconstp_anonymous_callback_entry.feature (eif_access(void_charconstp_anonymous_callback_entry.a_class), anonymous_1);
	}
}

void set_void_charconstp_anonymous_callback_entry (void* a_class, void* a_feature)
{
	void_charconstp_anonymous_callback_entry.a_class = eif_adopt(a_class);
	void_charconstp_anonymous_callback_entry.feature = (void_charconstp_anonymous_callback_eiffel_feature) a_feature;
}

void* get_void_charconstp_anonymous_callback_stub ()
{
	return (void*) void_charconstp_anonymous_callback_stub;
}

void call_void_charconstp_anonymous_callback (void *a_function, char const *anonymous_1)
{
	((void (*) (char const *anonymous_1))a_function) (anonymous_1);
}

struct void_voidp_size_t_anonymous_callback_entry_struct void_voidp_size_t_anonymous_callback_entry = {NULL, NULL};

void void_voidp_size_t_anonymous_callback_stub (void *data, size_t length)
{
	if (void_voidp_size_t_anonymous_callback_entry.a_class != NULL && void_voidp_size_t_anonymous_callback_entry.feature != NULL)
	{
		void_voidp_size_t_anonymous_callback_entry.feature (eif_access(void_voidp_size_t_anonymous_callback_entry.a_class), data, length);
	}
}

void set_void_voidp_size_t_anonymous_callback_entry (void* a_class, void* a_feature)
{
	void_voidp_size_t_anonymous_callback_entry.a_class = eif_adopt(a_class);
	void_voidp_size_t_anonymous_callback_entry.feature = (void_voidp_size_t_anonymous_callback_eiffel_feature) a_feature;
}

void* get_void_voidp_size_t_anonymous_callback_stub ()
{
	return (void*) void_voidp_size_t_anonymous_callback_stub;
}

void call_void_voidp_size_t_anonymous_callback (void *a_function, void *data, size_t length)
{
	((void (*) (void *data, size_t length))a_function) (data, length);
}

