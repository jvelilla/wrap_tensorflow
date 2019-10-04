#ifndef EWG_CALLBACK_LIBTENSORFLOW___
#define EWG_CALLBACK_LIBTENSORFLOW___

#include <c_api.h>

typedef void (*void_voidp_size_t_voidp_anonymous_callback_eiffel_feature) (void *a_class, void *data, size_t len, void *arg);

void* get_void_voidp_size_t_voidp_anonymous_callback_stub ();

struct void_voidp_size_t_voidp_anonymous_callback_entry_struct
{
	void* a_class;
	void_voidp_size_t_voidp_anonymous_callback_eiffel_feature feature;
};

void set_void_voidp_size_t_voidp_anonymous_callback_entry (void* a_class, void* a_feature);

void call_void_voidp_size_t_voidp_anonymous_callback (void *a_function, void *data, size_t len, void *arg);


#include <c_api.h>

typedef void (*void_charconstp_anonymous_callback_eiffel_feature) (void *a_class, char const *anonymous_1);

void* get_void_charconstp_anonymous_callback_stub ();

struct void_charconstp_anonymous_callback_entry_struct
{
	void* a_class;
	void_charconstp_anonymous_callback_eiffel_feature feature;
};

void set_void_charconstp_anonymous_callback_entry (void* a_class, void* a_feature);

void call_void_charconstp_anonymous_callback (void *a_function, char const *anonymous_1);


#include <c_api.h>

typedef void (*void_voidp_size_t_anonymous_callback_eiffel_feature) (void *a_class, void *data, size_t length);

void* get_void_voidp_size_t_anonymous_callback_stub ();

struct void_voidp_size_t_anonymous_callback_entry_struct
{
	void* a_class;
	void_voidp_size_t_anonymous_callback_eiffel_feature feature;
};

void set_void_voidp_size_t_anonymous_callback_entry (void* a_class, void* a_feature);

void call_void_voidp_size_t_anonymous_callback (void *a_function, void *data, size_t length);


#endif
