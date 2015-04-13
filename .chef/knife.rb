# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "philmui"
client_key               "#{current_dir}/philmui.pem"
validation_client_name   "heartflow-validator"
validation_key           "#{current_dir}/heartflow-validator.pem"
chef_server_url          "https://philvm.cloudapp.net/organizations/heartflow"
cookbook_path            ["#{current_dir}/../cookbooks"]
