url = $(curl -s -w "%{url_effective}\n" -L http://google.fr -o /dev/null)
magic = echo "$url" | sed -E 's|.*\?(.*)$|\1|g'
target = echo "$url" | sed -E 's|^([a-z]*://[a-z0-9\.]*(:[[:digit:]]*)?/).*|\1|g'
redir = "https://google.fr"

curl -X POST -d "magic=${magic}&4Tredir=${redir}&answer=1" 
