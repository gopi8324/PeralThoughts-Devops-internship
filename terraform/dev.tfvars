network_info = {
  name = "ntier"
  createdby = "Gopi"
  cidr = "192.168.0.0/21"
}
public_subnets = [{
  name = "web1"
  az   = "us-west-1b"
  cidr = "192.168.0.0/24"
  }, 
  {
  name = "web2"
  az   = "us-west-1c"
  cidr = "192.168.1.0/24"
  }
]
private_subnet = [{
  name = "db1"
  cidr = "192.168.2.0/24"
  az   = "us-west-1b"
  }
]
security_group = [ {
  name = "slim"
  description = "for public ip"
} ]
security_group_info = {
  name        = "web"
  description = "rule for web server"
  vpc_id      = ""
  inbound_rules = [{
    cidr        = "0.0.0.0/0"
    port        = 22
    protocol    = "tcp"
    description = "open ssh"
    },
    {
      cidr        = "0.0.0.0/0"
      port        = 80
      protocol    = "tcp"
      description = "open http"
    },
    {
      cidr        = "0.0.0.0/0"
      port        = 5432
      protocol    = "tcp"
      description = "open for in postgers"
    },
    {
      cidr        = "0.0.0.0/0"
      port        = 1337
      protocol    = "tcp"
      description = "open for strapi"
    }
  ]
   outbound_rules = [{
    cidr = "0.0.0.0/0"
    from_port = 0
    protocol = "-1"
    to_port = 0
    description = "open all"
   }]
  allow_all_egress = true
}

web_instance_info = {
  name              = "web"
  size              = "t2.small"
  ami               = "ami-0ff591da048329e00"
  subnet_id         = ""
  security_group_id = ""
  key_name          = "slimk"
}
