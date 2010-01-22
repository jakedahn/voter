dbconfig = YAML.load(File.read('config/database.yml'))
ActiveRecord::Base.establish_connection dbconfig["production"]

# Replace this section with your s3 info
AWS::S3::Base.establish_connection!(
  :access_key_id     => 'your info here',
  :secret_access_key => 'your info here'
)
