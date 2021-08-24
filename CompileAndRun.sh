echo "  -> Compile"
cd /Users/obstar/Repos/GitHub/mantis
/Users/obstar/.sdkman/candidates/sbt/1.5.5/bin/sbt dist

echo "  -> Unzip compiled build and go inside folder"
cd /Users/obstar/Repos/GitHub/mantis/target/universal/
unzip -a \*.zip
name=$(find . -name "mantis-*SNAPSHOT" ! -path "*.zip")
cd $name

echo "  -> Run mantis"
./bin/mantis-launcher etc &!