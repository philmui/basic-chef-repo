package_name = "apache2"

# install the apache program
if node["platform"] == "ubuntu"
    execute "apt-get update" do
        command "apt-get update"
    end
elsif node["platform"] == "centos"
    package_name = "httpd"
end

package package_name do
    action :install
end

# start the apache svcs and add to bootup

service package_name do
    action [:start, :enable]
end
