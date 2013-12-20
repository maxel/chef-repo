name        "Base-Debian-Server"
description "Use this to get a Debian server basically configured"
run_list "recipe[apt]"

default_attributes({
    "dummy_attr" => "value"
})
