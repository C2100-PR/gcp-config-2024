#!/bin/bash

# Enable required APIs
gcloud services enable cloudresourcemanager.googleapis.com iam.googleapis.com iamcredentials.googleapis.com sts.googleapis.com --project=admin-coaching2100

# Create org-level identity pool
gcloud iam workload-identity-pools create "org-federation-pool" --project=admin-coaching2100 --location="global" --display-name="Organization Federation Pool"

# Create GitHub provider
gcloud iam workload-identity-pools providers create-oidc "github-provider" --project=admin-coaching2100 --location="global" --workload-identity-pool="org-federation-pool" --attribute-mapping="google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.repository=assertion.repository" --issuer-uri="https://token.actions.githubusercontent.com"