#!/bin/bash

# run sed to add hostname
#sed -i -e "s/proxy => {/proxy => {\n\t\t\thostname => QA-120-A1/g" ./url_filter_white_blacklist_*

# run ta-dev one by one
for ta_file in $(ls ./testcases/1.t ./testcases/2.t)
do
  cat $ta_file
  printf "\n"
done
