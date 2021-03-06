# linux_benchmarking_tools

## About
A project to automated the installation process of **OpenVINO Toolkits** used in
Linux and Raspbian

## Installing
On Terminal, run:
```
$ git clone https://github.com/KhairulIzwan/linux_benchmarking_tools
```

## Benchmark Tools
1. [AIXPRT](https://www.principledtechnologies.com/benchmarkxprt/aixprt/index.php)

> ...an AI benchmark tool that makes it easier to evaluate a system's machine learning inference performance by running common **image-classification, object-detection, and recommender system workloads**.
> 
> ...support for the **Intel OpenVINO, TensorFlow, and NVIDIA TensorRT** toolkits to run image-classification and object-detection workloads with the **ResNet-50 and SSD-MobileNet v1** networks, as well as a Wide and Deep recommender system workload with the Apache MXNet toolkit. The test reports FP32, FP16, and INT8 levels of precision. Test systems must be running **Ubuntu 18.04 LTS or Windows 10**, and the minimum CPU and GPU requirements vary by toolkit. You can find more detail on hardware and software requirements in the installation package's readme files.

#### Usage:
On terminal, run:
```
$ ./AIXPRT_benchmarking.sh
```

2. [OpenVINO Benchmark App](https://docs.openvinotoolkit.org/2018_R5/_samples_benchmark_app_README.html)

3. [MLxBench](https://mlbench.github.io/)

4. [Trtexec](https://github.com/NVIDIA/TensorRT/tree/master/samples/opensource/trtexec)

## References: 
1. [Hello World Bash Shell Script](https://www.cyberciti.biz/faq/hello-world-bash-shell-script/)
2. [How to compare to floating point number in a shell script](https://unix.stackexchange.com/questions/24721/how-to-compare-to-floating-point-number-in-a-shell-script)
3. [9 Useful Commands to Get CPU Information on Linux](https://www.tecmint.com/check-linux-cpu-information/)
4. [Bash Exit Command and Exit Codes](https://linuxize.com/post/bash-exit/)
5. [Bash Case Statement](https://linuxize.com/post/bash-case-statement/)
6. [Other Comparison Operators](https://tldp.org/LDP/abs/html/comparison-ops.html)
7. [How to change the output color of echo in Linux](https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux_benchmarking_tools)
8. [How to unzip a zip file from the Terminal?](https://askubuntu.com/questions/86849/how-to-unzip-a-zip-file-from-the-terminal)
9. [Get CPU Information on Linux](https://linuxize.com/post/get-cpu-information-on-linux/)
10. [BenchmarkXPRT/Public-AIXPRT-Resources](https://github.com/BenchmarkXPRT/Public-AIXPRT-Resources/blob/master/Installation%20readmes/AIXPRT%20OpenVINO%20Ubuntu%20Readme.md)
