username='pat'
wget -N -O "github_user.list" "https://api.github.com/users/${username}/repos?per_page=100"
grep -w "clone_url" github_user.list> list.txt
sed -i 's/"clone_url":/git clone/g' ./list.txt
###delete last comma ","
sed -i "s/.$//g" ./list.txt
bash list.txt

