npm run build
cat ./sample/sample.http ./sample/diff.json | nc -l 0.0.0.0 9090 &
echo | nc -l 0.0.0.0 9091 | sed '1,/^\r$/d' | jq '.' &
npm run start
