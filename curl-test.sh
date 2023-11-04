#!/bin/bash
SERVER_KEY='AAAASMZ2ULc:APA91bELhOBAM8WsBcNBlPNNG1pWWOl-db7A4j7uv3HjDcx_axUIgxyVyWW9NehhiBW_rjaipGVZXmaa2rhYgiYc5tv2yE575qxuAtbgg7z1iMgnnOri4MsBFArZihltcgSvgiSV-t40'
DEVICE_REG_TOKEN='cD1eQe2kBVNwI7x6HuwuVY:APA91bGAFi6p-N_TVvbNRzK89OQbGzgUXABatJxoL5khqXJvHR9-dnEJvIwNZFcXrJP2awuF3w0qbDr4g_KaPkOWAWSdPB-qnXUJEVN6mdGLu37fwPEHdgW4oeym45_0wTRf-NJYIHbR'

CMD=$(cat <<END
curl -X POST -H "Authorization: key=$SERVER_KEY" -H "Content-Type: application/json"
   -d '{
  "data": {
    "notification": {
        "title": "FCM Message",
        "body": "This is an FCM Message",
        "icon": "/itwonders-web-logo.png",
    }
  },
  "to": "$DEVICE_REG_TOKEN"
}' https://fcm.googleapis.com/fcm/send
END
)

echo $CMD && eval $CMD
