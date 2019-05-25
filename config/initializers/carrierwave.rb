CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws' 
  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id => Rails.application.credentials.dig(:aws, :access_key_id),
    :aws_secret_access_key => Rails.application.credentials.dig(:aws, :secret_access_key),
    :region => 'sa-east-1'
  }
  config.fog_directory = Rails.application.credentials.dig(:aws, :bucket)
  config.storage = :fog
  #   config.storage = :file
  #   config.enable_processing = Rails.env.development?
end