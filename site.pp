node default {
  include profile
  include profile::web
  include profile::ssh
}

node vagrant {
  include profile
  include profile::web
  include profile::ssh
}

node niko01 {
  include profile
}
