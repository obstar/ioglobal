echo "  -> Compile"
cd /Users/obstar/Repos/GitHub/mantis
/Users/obstar/.sdkman/candidates/sbt/1.5.5/bin/sbt dist

echo "  -> Unzip compiled build"
cd /Users/obstar/Repos/GitHub/mantis/target/universal/
unzip -a \*.zip

name=$(find . -name "mantis-*SNAPSHOT" ! -path "*.zip")
echo "      -> Go inside unzipped folder $name"
cd $name

echo "  -> Run mantis"
nohup ./bin/mantis-launcher etc &