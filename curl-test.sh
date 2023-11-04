#!/bin/bash
SERVER_KEY='AAAASMZ2ULc:APA91bEV_vpcLdgy_1G2T4e_2dCnHccKiVVNQzi-Kf9PU84aQ5RJpVaJZ0G84lVteOpLO2YVc9-WngpAz9z0fnk2ub_wNKqvye7T2S5cO6oZ2juc_KoHrji5Tpf-N_HbAw-15N1UH0s_'
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
