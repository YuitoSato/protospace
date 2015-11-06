CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Settings.aws[:access_key_id],
    aws_secret_access_key: Settings.aws[:secret_access_key],
    region: Settings.aws[:region_key],
    path_style: true,
  }

  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'public' 'max-age=315576000'}

  config.fog_directory = 's3yuito-protospace'
  config.asset_host = 's3yuito-protospace'
  config.storage = :fog

end
