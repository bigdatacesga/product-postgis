# First get a TOKEN
# export TOKEN='<TOKEN>'
# export AUTH="x-auth-token: $TOKEN"

http POST http://paas:6000/bigdata/api/v1/products name=postgis version=25_12 description='Postgresql with the most common extension for spatial data' logo_url='http://bigdata.cesga.es/img/postgis_logo.gif' x-auth-token:$TOKEN
curl -X PUT http://paas:6000/bigdata/api/v1/products/postgis/25_12/template --data-binary @template.json -H "Content-type: application/json" -H "$AUTH"
curl -X PUT http://paas:6000/bigdata/api/v1/products/postgis/25_12/options --data-binary @options.json -H "$AUTH"
curl -X PUT http://paas:6000/bigdata/api/v1/products/postgis/25_12/orchestrator --data-binary @fabfile.py -H "$AUTH"

# Launching
# http POST http://paas:6000/bigdata/api/v1/products/postgis/25_12 password="verysecret" x-auth-token:$TOKEN

