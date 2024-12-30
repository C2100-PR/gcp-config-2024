
{
  "encoding": "utf-8",
  "content": "#!/bin/bash\n\n# Organization-level GCP Identity setup\n# Enable required APIs\ngcloud services enable \\\n  cloudresourcemanager.googleapis.com \\\n  iam.googleapis.com \\\n  iamcredentials.googleapis.com \\\n  sts.googleapis.com \\\n  --project=admin-coaching2100\n\n# Create organization-level identity pool\ngcloud iam workload-identity-pools create \"org-federation-pool\" \\\n  --project=admin-coaching2100 \\\n  --location=\"global\" \\\n  --display-name=\"Organization Federation Pool\""
}