ts=`date +%s`
id=$(((RANDOM%6)+1))
value=$(((RANDOM%6)+1))
echo $ts $id $value | awk -f json-message-format.awk > sample.out
curl -X POST "http://elk.local:9200/demo/metrics" --data @sample.out
