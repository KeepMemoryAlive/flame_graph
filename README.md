# flame_graph
在linux系统下，一键生成火焰图; 下载后即可使用。

# 前提
linux系统中安装有perf，一般情况下，现在大部分内核版本都默认带有perf，
安装命令：yum install perf

# 执行
./flame_graph.sh  pid  time     
pid:采集目标进程id   time:采集时长

# 结果
等待采集时间完成后，在目录下会生成一个pid.svg文件，用浏览器打开该文件即可观察火焰图

