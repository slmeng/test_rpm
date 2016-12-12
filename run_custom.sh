#!/bin/bash

# run sed to add hostname
sed -i -e "s/proxy => {/proxy => {\n\t\t\tname => 'QA-120-A1'/g" ./url_filter_white_blacklist_*
# From command line:
# ls  *ssl* | xargs sed -i -e "0, /proxy => {/s/proxy => {/proxy => {\n\t\t\tname  => 'QA-220-B4',/g"  

# run ta-dev one by one
# From command line:
# ls *ssl*| xargs file 
# for ta_file in $(ls HTTP-Proxy/url*ssl*); do echo $ta_file>>ta_result.log; echo "===========" >> ta_result.log; run_ta $ta_file --debug  --auto --no-manuscript-modification --sw_version "ASG-9.409-20161209.1" --sw_branch "ASG-axg9400_network" >> ta_result.log 2>&1; sleep 160;  done                          
for ta_file in $(ls ./testcases/1.t ./testcases/2.t)
do
  cat $ta_file
  printf "\n"
done
