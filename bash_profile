# so cool !!!
names () { sed -e 's/,/ /g;q'; }

alias ll="ls -l"
alias ..="cd .."
alias hd="hdfs dfs"
alias dirs="dirs -p -v"
alias cdd="pushd"
alias vlv="virtualenv"
alias mvlv="mkvirtualenv"
alias dexit="deactivate"
alias rm_root="/bin/rm"
alias rm="sh /Users/bujiajun/Shell/remove.sh"
alias git_b="git branch"
alias git_c="git checkout"
alias date_s="date +%s"
alias date_d='date +"%F %T"'
alias tmux_j="tmux a -t joker"
alias tail_f="tail -200f"
alias my_ip="ifconfig | grep 172 | awk '{print \$2}'"
alias less="less -NSs"

s2d () { date -r $1 +"%F %T"; }
# export PS1="\h:\w \u \$ "
export PS1="\h:\W \$ "
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

HISTTIMEFORMAT='%F %T '
HISTSIZE=3000
HISTFILESIZE=3000
# tmux
# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups

# append history entries..
shopt -s histappend

export GOPATH=/Users/bujiajun/Workspace/go
export PATH=$PATH:$GOPATH/bin

# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home 

export PATH=$PATH:/Users/bujiajun/Workspace/shell/commandline/command_main/tools:/Users/bujiajun/App/java/jad-1.5.8
export PATH=$PATH:/anaconda3/bin

export MAVEN_HOME=/Users/bujiajun/App/apache-maven-3.5.4
export PATH=$PATH:$MAVEN_HOME/bin

export SPARK_HOME=/Users/bujiajun/App/spark-2.3.2
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

export FLINK_HOME=/Users/bujiajun/App/flink-1.8.1
export PATH=$PATH:$FLINK_HOME/bin

export MONGODB_HOME=/Users/bujiajun/App/mongodb-3.6
export PATH=$PATH:$MONGODB_HOME/bin

export PATH=$PATH:/usr/local/mysql/bin

export HADOOP_HOME=/Users/bujiajun/App/hadoop-2.7.7
export PATH=$PATH:$HADOOP_HOME/bin

export HIVE_HOME=/Users/bujiajun/App/hive-2.3.4
export PATH=$PATH:$HIVE_HOME/bin

export ZK_HOME=/Users/bujiajun/App/zookeeper-3.4.10
export PATH=$PATH:$ZK_HOME/bin

export DATAX_HOME=/Users/bujiajun/App/datax
export PATH=$PATH:$DATAX_HOME/bin

export SCALA_HOME=/Users/bujiajun/App/scala-2.11.8
export PATH=$PATH:$SCALA_HOME/bin

export ZEPPELIN_HOME=/Users/bujiajun/App/zeppelin-0.8.0
export PATH=$PATH:$ZEPPELIN_HOME/bin

export FLUME_HOME=/Users/bujiajun/App/flume-1.8.0
export PATH=$PATH:$FLUME_HOME/bin 

export KAFKA_HOME=/Users/bujiajun/App/kafka_2.11-1.0.0
export PATH=$PATH:$KAFKA_HOME/bin

export REDIS_HOME=/Users/bujiajun/App/redis-5.0.4/src
export PATH=$PATH:$REDIS_HOME

export WORKON_HOME=/Users/bujiajun/Workspace/python/virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3.7
source /usr/local/bin/virtualenvwrapper.sh

export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$SPARK_HOME/python/lib/pyspark.zip
export PYSPARK_PYTHON=python3

# tmux
tmux_init()
{
    tmux new-session -s "joker" -n "jump" -d    # 开启一个会话
}

if which tmux 2>&1 >/dev/null; then
    test -z "$TMUX" && (tmux attach || tmux_init)
fi

# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!

#__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/anaconda3/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#        \export PATH="/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda init <<<
