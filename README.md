This repository contains a simple bash script that demonstrates a race condition bug. The script creates two files and writes to them concurrently using background processes.  Due to the race condition, the final output is not guaranteed to be 'HelloWorld' and it might be 'WorldHello' or even a mix of both. The solution demonstrates how to avoid this issue using process synchronization.