package_name = "apache2"

# disable any existing apache
service package_name do
    action [:stop, :disable]
end
