# project details
PROJECT_NAME='cloudrun-test'
PROJECT_ID='cloudrun-2403'
REGION_ID='us-central1'
ZONE_ID='us-central1-a'

# cleanup trigger-func container
gcloud container images delete gcr.io/$PROJECT_ID/trigger-func
gcloud run services delete trigger-func \
  --platform managed \
  --region $REGION_ID

# cleanup pubsub
gcloud pubsub topics list
gcloud pubsub topics delete feedback-created
gcloud pubsub topics delete feedback-classified

# cleanup project data in machine
gcloud config unset compute/zone
gcloud config unset project

# delete project
gcloud projects delete $PROJECT_ID