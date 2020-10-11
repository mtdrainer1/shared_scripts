#!/bin/bash
# ./dnsimple_create_record.sh

# **** CREDENTIALS FOR DNSIMPLE API ****
TOKEN="<dnsimpletoken>" 
ACCT="<dnsimple_acct_number>"

# **** SET DNSIMPLE VARIABLES ****
DOMAIN="<tld_name>"
RECORD_TYPE="<A,TXT,CNAME,MX>"
RECORD_CONTENT="<record_content>"
RECORD_TTL="<ttl_in_seconds>"

curl -H "Authorization: Bearer ${TOKEN}" -H 'Accept: applicaton/json' -H 'Content-Type: application/json' -X POST -d "{\"name\":\"$RECORD_NAME\", \"type\":\"$RECORD_TYPE\", \"content\":\"$RECORD_CONTENT\", \"ttl\":\"$RECORD_TTL\"}" https://api.sandbox.dnsimple.com/v2/$ACCT/zones/$DOMAIN/records/

