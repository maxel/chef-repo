name        "Website-server"
description "Nginx common Website server"
run_list "recipe[nginx]"

default_attributes({
    "dummy_attr" => "value"
})
