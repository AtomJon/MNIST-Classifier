all: main

LIBS := torch_python protobuf-lite torchbind_test jitbackend_test nnapi_backend dnnl torch_global_deps c10 backend_with_compiler benchmark_main onnx_proto fbgemm foxi_loader cpuinfo_internals gtest unbox_lib benchmark asmjit tensorpipe torch_cpu aoti_custom_ops gtest_main fmt protoc XNNPACK ittnotify clog nnpack cpuinfo gmock kineto onnx tensorpipe_uv nnpack_reference_layers gmock_main protobuf pytorch_qnnpack gloo pthreadpool torch shm
OBJECTS = $(addprefix -l ,${LIBS})

main: main.cpp
	g++ main.cpp -L libtorch/lib ${OBJECTS} -I libtorch/include -l:libgomp-a34b3233.so.1 -o build/main

clean:
	rm -f build/main