CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_KEY'],
    aws_secret_access_key: ENV['AWS_SECRET'],
    region: 'sa-east-1'
  }
  config.fog_directory = ENV['AWS_BUCKET']
  config.storage = :fog
end
