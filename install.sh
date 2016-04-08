#!/bin/bash

echo "
     ______ __  __ __     __       ________
    / ___(_) /_/ // /_ __/ /  ____/ __/_  /
   / (_ / / __/ _  / // / _ \/___/\ \_/_ < 
   \___/_/\__/_//_/\_,_/_.__/   /___/____/ 
"

echo "Downloading scripts to /usr/local/bin..."
curl --progress-bar --location "https://raw.github.com/hyperoslo/github-s3/master/github-to-s3" > /usr/local/bin/github-to-s3
curl --progress-bar --location "https://raw.github.com/hyperoslo/github-s3/master/s3-to-github" > /usr/local/bin/s3-to-github

chmod +x /usr/local/bin/github-to-s3
chmod +x /usr/local/bin/s3-to-github

echo "Done."
