CarrierWave.configure do |config|

  puts "------------> #{ENV['AWS_ACCESS_KEY_ID']}"
  puts "------------> #{ENV['AWS_SECRET_ACCESS_KEY']}"
  puts "------------> #{ENV['AWS_S3_BUCKET']}"

  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],                        # required
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],                        # required
  }
  config.fog_directory  = ENV['AWS_S3_BUCKET']                          # required
end