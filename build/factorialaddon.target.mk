# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := factorialaddon
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=factorialaddon' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-std=gnu++1y

INCS_Debug := \
	-I/home/dz-gg-07/.node-gyp/10.15.3/include/node \
	-I/home/dz-gg-07/.node-gyp/10.15.3/src \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/openssl/config \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/openssl/openssl/include \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/uv/include \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/zlib \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/v8/include \
	-I/home/dz-gg-07/DZ/TestTask/factorial/node_modules/node-addon-api

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=factorialaddon' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-std=gnu++1y

INCS_Release := \
	-I/home/dz-gg-07/.node-gyp/10.15.3/include/node \
	-I/home/dz-gg-07/.node-gyp/10.15.3/src \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/openssl/config \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/openssl/openssl/include \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/uv/include \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/zlib \
	-I/home/dz-gg-07/.node-gyp/10.15.3/deps/v8/include \
	-I/home/dz-gg-07/DZ/TestTask/factorial/node_modules/node-addon-api

OBJS := \
	$(obj).target/$(TARGET)/cppsrc/main.o \
	$(obj).target/$(TARGET)/cppsrc/Samples/factorialExample.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/nothing.a $(obj).target/node_modules/node-addon-api/src/nothing.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/factorialaddon.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/factorialaddon.node: LIBS := $(LIBS)
$(obj).target/factorialaddon.node: TOOLSET := $(TOOLSET)
$(obj).target/factorialaddon.node: $(OBJS) $(obj).target/node_modules/node-addon-api/src/nothing.a FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/factorialaddon.node
# Add target alias
.PHONY: factorialaddon
factorialaddon: $(builddir)/factorialaddon.node

# Copy this to the executable output path.
$(builddir)/factorialaddon.node: TOOLSET := $(TOOLSET)
$(builddir)/factorialaddon.node: $(obj).target/factorialaddon.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/factorialaddon.node
# Short alias for building this executable.
.PHONY: factorialaddon.node
factorialaddon.node: $(obj).target/factorialaddon.node $(builddir)/factorialaddon.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/factorialaddon.node

