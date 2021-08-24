echo "\t-> Go inside git folder and refresh repository with new source files"
cd /Users/obstar/Repos/GitHub/mantis
git clean -fxd
git pull --prune
git submodule update --recursive --init

echo "\t-> Kill old mantis client processes on the agent machine"
processPid=$(pgrep -f '^.*mantis.*$')
if [ -z "$processPid" ]
then
        echo "\t-> mantis process Pid is empty"
else
        kill $processPid
        echo "\t-> mantis process PID $processPid has been killed"
fi