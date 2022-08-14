This repo was created to try and learn assembly in general.

**Why am I learning atari 2600 6502 assembly? ARM assembly is different from the 6502.**<br>
Well that is very true. Every assembly language is different. The x86 assembly is differnt from ARM assembly and both ARM and x86 is different from thr 6502 assembly. So why am I doing it?

Well while the language is different, all assembly languages have some common commands like being able to add two numbers or jump to a memory location or store a value in a register. My reasoning for doing 6502 assembly is because the CPU is old enough that many tutorials exist on how to deal with it and how to draw graphics using the TIA chip on the screen. Unlike ARM and x86, which don't have specific instructions for drawing graphics since they both are CPUs and not GPUS. Doing any meaningful graphics rendering on AMD or Nvidia or Intel or Broadcom would mean spending countless months digging to try and find how to talk to the GPU since there is very little to no documentation on how to do that since all of these companies will not share how their GPUs work internally. I think it is much easier to work with Intel or AMD but not Evil Nvidia.

So in conclusion I want to make a nice small game on the atari 2600 using assembly to get used to the language and the way of thinking and programming in such a low level environment so I can create an OS later on for ARM on the Raspberry Pi 4

**What is my end goal?**<br>
My end goal is to be able to understand how assembly works and create an operating system for ARM CPU

**Resources:**<br>
6502 Assembler: https://dasm-assembler.github.io/
