# setup project id
PROJECT_NAME='cloudrun-test'
PROJECT_ID='cloudrun-2403'
REGION_ID='us-central1'
ZONE_ID='us-central1-a'

gcloud projects create $PROJECT_ID --name=$PROJECT_NAME

# gcloud components update
gcloud config set project $PROJECT_ID
# export GOOGLE_CLOUD_PROJECT=$PROJECT_ID 
# echo $GOOGLE_CLOUD_PROJECT

# setup compute zone
gcloud config set compute/zone $ZONE_ID
# gcloud config set region $REGION_ID

# enable cloudrun apis
gcloud services enable run.googleapis.com
gcloud services enable cloudbuild.googleapis.com

# # create pub-sub topics
gcloud pubsub topics create feedback-created
gcloud pubsub topics create feedback-classified