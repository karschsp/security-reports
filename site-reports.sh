#! /bin/bash
echo "<html><head>"
echo "<link href='https://fonts.googapis.com/css?family=Source+Code+Pro' rel='stylesheet' type='text/css' />"
echo "<style type='text/css'>body{font-size: 62.5%; font-family: 'Helvetica Neue', sans-serif; color: #777;}"
echo "h1 {font-size: 250%;}"
echo "h2 {font-size: 225%; color: #f9b634;}"
echo "pre {font-size: 200%; font-family 'Source Code Pro', 'courier', 'monospace';}"
echo "</style>"
echo "</head>"
echo "<body><h1>Fattony Security Reports</h1>"
echo "<h2>Last updated on $(date)</h2>"
for d in /var/www/*; do

    echo "<h2>$d</h2>"
    cd "$d/webroot"
    echo "<pre>"
    drush up -n | grep SECURITY
    echo "</pre>"
    echo "<hr />"
done
echo "</body>"
#cd "/var/www/$1/webroot"
#echo "<html><body><h2>$1 Security Updates</h2><pre>"
#drush up -n | grep SECURITY
#echo "</pre></body></html>"
