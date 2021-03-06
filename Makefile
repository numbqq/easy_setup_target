CC = aarch64-linux-gnu-gcc

src_list := main_linux.c easy_setup_linux.c easy_setup/easy_setup.c easy_setup/scan.c proto/cooee.c proto/neeze.c proto/akiss.c proto/changhong.c proto/jingdong.c proto/jd.c
obj_list := $(src_list:%.c=%.o)

CFLAGS := -Ieasy_setup -Iproto

.PHONY: airkiss_setup

airkiss_setup:$(obj_list)
	$(CC) -o $@ $^
	
%.o:%.c
	$(CC) -c $(CFLAGS) -o $@ $^

clean:
	rm -rf $(obj_list) airkiss_setup


