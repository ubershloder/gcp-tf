sudo yum -y update && sudo yum -y install nginx \
sudo systemctl enable nginx && systemctl start nginx
if [ $(curl -LI http://localhost -o /dev/null -w '%{http_code}\n' -s) == "200" ]; 
then
 echo "error"
 exit 1;
fi
