#!/bin/bash

# Organization-level GCP Identity setup
# Enable required APIs
gcloud services enable \
  cloudresourcemanager.googleapis.com \
  iam.googleapis.com \
  iamcredentials.googleapis.com \
  sts.googleapis.com \
  --project=admin-coaching2100

# Create organization-level identity pool
gcloud iam workload-identity-pools create "org-federation-pool" \
  --project=admin-coaching2100 \
  --location="global" \
  --display-name="Organization Federation Pool"