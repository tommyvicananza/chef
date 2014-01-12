# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jotamolina"
client_key               "#{current_dir}/jotamolina.pem"
validation_client_name   "proba-validator"
validation_key           "#{current_dir}/proba-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/proba"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
