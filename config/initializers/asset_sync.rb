if defined?(AssetSync) && (Rails.env.production? || Rails.env.staging?)
  AssetSync.configure do |config|
    config.fog_provider = 'AWS'
    config.fog_region = ENV_CONFIG[:asset_sync]['FOG_REGION']
    config.existing_remote_files = "keep"
    config.fog_directory = ENV_CONFIG[:asset_sync]['FOG_DIRECTORY']
    config.aws_access_key_id = ENV_CONFIG[:asset_sync]['AWS_ACCESS_KEY_ID']
    config.aws_secret_access_key = ENV_CONFIG[:asset_sync]['AWS_SECRET_ACCESS_KEY']
  end
end
