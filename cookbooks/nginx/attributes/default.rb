
case node["platform"]
when "ubuntu"
    default["package_name"] = "nginx"
    default["service_name"] = "nginx"
    default["doc_root"]     = "/var/www"
when "debian"
    default["package_name"] = "nginx"
    default["service_name"] = "nginx"
    default["doc_root"]     = "/var/www"
end
