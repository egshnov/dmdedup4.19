ccflags-y := -Wall\
		-Wextra\
		-Wno-missing-field-initializers\
		-Wno-unused-parameter\
		-Wformat\
		-O2	\
		-std=gnu18\
		-g\
		-Werror=format-security\
		-Werror=implicit-function-declaration\

persistent-data-objs := \
    persistent-data/dm-array.o \
    persistent-data/dm-bitset.o \
    persistent-data/dm-block-manager.o \
    persistent-data/dm-space-map-common.o \
    persistent-data/dm-space-map-disk.o \
    persistent-data/dm-space-map-metadata.o \
    persistent-data/dm-transaction-manager.o \
    persistent-data/dm-btree.o \
    persistent-data/dm-btree-remove.o \
    persistent-data/dm-btree-spine.o

dm-dedup-y := dm-dedup-cbt.o dm-dedup-hash.o dm-dedup-ram.o dm-dedup-check.o dm-dedup-rw.o dm-dedup-target.o $(persistent-data-objs)

obj-m += dm-dedup.o 
