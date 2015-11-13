# !/bin/sh
[ $# != "1" ] && echo "Usage: $0 tarfile" && exit 0

 # 创建压缩文件
 # [ $# != "1" ] && echo "Usage: $0 dir outfile" && exit 0
 # tar -cvf abc.tgz dir
 # rm -f abc.tgz 
 
DESTFILE="$1.sh"

echo "# !/bin/sh" > $DESTFILE
 # 计算目标文件的行数
echo "LINES=`wc -l $0 | awk '{ print $1 }'`" >> $DESTFILE
 # 计算需要输出的行，为总行数-4(4行执行脚本)
echo "LINES=`expr $LINES - 4`" >> $DESTFILE
 # 输出并释放(可以结合-z/-j释放压缩文件)
echo "tail -n $LINES $0 | tar -xvf " >> $DESTFILE
echo "exit 0" >> $DESTFILE

 # 添加tar文件到文件尾
cat $1 >> $DESTFILE
 # 为目标文件添加可执行权限
chmod +x $DESTFILE 