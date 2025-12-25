npm run build
cat ./sample/sample.http ./sample/diff.json | nc -l 9090 &
echo | nc -l 9091 | sed '1,/^\r$/d' | jq '.' &
npm run start
