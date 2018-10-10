Aws.config.update({
  region: 'ap-northeast-1',
  credentials: Aws::Credentials.new(
    Rails.application.credentials.aws[:access_key_id],
    Rails.application.credentials.aws[:secret_access_key])
})

S3_BUCKET = Aws::S3::Resource.new.bucket(Rails.application.credentials.aws[:s3_bucket])
