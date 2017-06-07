#!/bin/bash

# author:       Tien
# date:         07-07-2017
# purpose:      ensure website moca is up.

response=`curl -sL -w "%{http_code}\\n" "https://moca.vn" -o /dev/null`

if [ "$response" != 200 ]
then
        echo -e "website moca is down" | mail -s "website moca is down" monitor@moca.vn
fi
