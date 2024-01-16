.PHONY: x86

x86:
	@echo "Building x86"
	@scons ./build/X86/gem5.opt -j192 --linker=mold

hello:
	@echo "Running x86"
	@./build/X86/gem5.opt --debug-flags=HelloExample configs/tutorial/part2/run_hello.py

clangd:
	@echo "Running clangd"
	@scons build/X86/compile_commands.json

memobj:
	@echo "Running memobj"
	@./build/X86/gem5.opt --debug-flags=SimpleMemobj configs/tutorial/part2/run_memobj.py

riscv:
	@echo "Building riscv"
	@scons ./build/RISCV/gem5.opt -j192 --linker=mold