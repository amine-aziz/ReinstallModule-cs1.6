shopt -s extglob
chattr -i hlds_run
rm -r !(*.sh)
wget http://bachathost.com/cdn/hlds.zip
unzip hlds.zip
rm -r hlds.zip
mkdir -p fastdl
echo "Server reinstalled successfully! Redirecting..."
