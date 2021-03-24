# project details
PROJECT_NAME='cloudrun-test'
PROJECT_ID='cloudrun-2403'
REGION_ID='us-central1'
ZONE_ID='us-central1-a'

# build and push image to gcloud run
gcloud builds submit --tag gcr.io/$PROJECT_ID/trigger-func

# list images
gcloud container images list

# deploy to gcloud run
gcloud run deploy trigger-func \
  --image gcr.io/$PROJECT_ID/trigger-func \
  --platform managed \
  --region $REGION_ID \
  --allow-unauthenticated