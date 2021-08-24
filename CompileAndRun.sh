echo "  -> Compile"
sbt dist || { echo 'sbt dist command failed' ; exit 1; }

echo "  -> Unzip compiled build and go inside folder"
cd /Users/obstar/Repos/GitHub/mantis/target/universal/
unzip -a \*.zip
name=$(find . -name "mantis-*SNAPSHOT" ! -path "*.zip")
cd $name

echo "  -> Run mantis"
./bin/mantis-launcher etc &!