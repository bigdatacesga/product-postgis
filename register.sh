# First get a TOKEN
# export TOKEN='<TOKEN>'
# export AUTH="x-auth-token: $TOKEN"

http POST http://paas:6000/bigdata/api/v1/products name=postgresql_spatiotemporal version=12.6 description='Postgresql + Postgis & Timescaledb. Postgresql with the most common extensions for spatial data and time series' logo_url='http://bigdata.cesga.es/img/pgsql_sp-tmp_logo_transparent.png' x-auth-token:$TOKEN
curl -X PUT http://paas:6000/bigdata/api/v1/products/postgresql_spatiotemporal/12.6/template --data-binary @template.json -H "Content-type: application/json" -H "$AUTH"
curl -X PUT http://paas:6000/bigdata/api/v1/products/postgresql_spatiotemporal/12.6/options --data-binary @options.json -H "$AUTH"
curl -X PUT http://paas:6000/bigdata/api/v1/products/postgresql_spatiotemporal/12.6/orchestrator --data-binary @fabfile.py -H "$AUTH"

# Launching
# http POST http://paas:6000/bigdata/api/v1/products/postgis/25_12 password="verysecret" x-auth-token:$TOKEN

