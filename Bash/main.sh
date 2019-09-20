#!/bin/bash

echo "HTTP POST with credentials"

curl 'https://github.com/session' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://github.com/login' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Connection: keep-alive' -H 'Cookie: logged_in=no; _octo=GH1.1.1633119028.1504868940; _ga=GA1.2.165437045.1504868940; _device_id=5d792b328d20778d0b07ddc846b460cd; _gh_sess=OGxOWmhVTUhZSHd4eWY4WlZjV2NXTG04MXR4KzJJTTE4QXp0anFQUGR2N21TdWlzOTdNL1NJTjg5WWxoL3ZVZ1hoK2MrN1VFcHBoR3lzZ3dTQjdNUEZBQUE4b1Z0WXp3Nzh5MElRRTFubXE0cDRNWDZVTkRicHNtc3pVTlF3TXA2QjUxSUpQeHlWUDhYSmlzeWRpZWdvSU03azVjcjdudmIzdUZST0UzdnBlaVNMajFYRVE2Y0l3NTBoa1dlRjVpbFYvUjBGZU1lSDc2VUNyRXBoY0F1QVgya0ZvWFpjeUUxMTFyeXNxOXhYK1dXM244ZWNyOGgxTjl1Y0JvWTdGUmNxdXpVTjVJU05NWGpWeDkrd25WMXJTT2lQL1N4MlZZZnBrUEJMQWg4TklnMFNyRDNieWdHdE9kb0Vwa2pXWDZxbWIxSU92ejRSZ0Fjay9yN3RGRGNHMjlPZmY5VGEveEJBT1FRc1IzYlRoNnI0NXdrLzhhUEplenppNVovRVdpQVVTbmtEQW5aNkt6djQzYno2ZEtISlZqcXJ0eUtIZHlrWlgwTFJBZTRyYkJZL2NLUVY4QnlKK3F2MldYYmt5Wi0tRmNOeERWS0ppbitGaU96MDhEL1Exdz09--4caa8f73cb7f75a64c40db1827e2e46d76a2ec8d; tz=Europe%2FBerlin; has_recent_activity=1; _gat=1' -H 'Upgrade-Insecure-Requests: 1' --data 'commit=Sign+in&utf8=%E2%9C%93&authenticity_token=%2FrBlgNJeJlvE7J5uwIUyJWHw5uyQEldG%2BPRTIKiRkitPsVcQDTuO%2FKE458FOMmUFUsVZzv6CJogeER46jQYLcQ%3D%3D&login=myusername&password=t0ps3cr3t&webauthn-support=supported'