CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => Settings.aws[:access_key_id],
    :aws_secret_access_key  => Settings.aws[:secret_access_key],
    :region                 => Settings.aws[:region_key],
  }

  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}

  config.fog_directory = 's3yuito-protospace' if Rails.env.production?
  config.fog_directory = 's3yuito-protospace_for_dev' if Rails.env.development?

end
