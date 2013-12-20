name        "Base-Debian-XEN-Server"
description "Use this to get a Debian XEN server basically configured"
run_list "recipe[apt]"

default_attributes({
    "dummy_attr" => "value"
})
