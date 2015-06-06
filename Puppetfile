#!/usr/bin/env ruby
#^syntax detection
#
# https://github.com/rodjek/librarian-puppet

forge "https://forgeapi.puppetlabs.com"

# https://github.com/andschwa/puppet-manifests/blob/master/Puppetfile
# Shortcut for a module from given GitHub account
def github(user, name, *args)
  options ||= if args.last.is_a? Hash
                args.last
              else
                {}
              end
  if path = options.delete(:path)
    mod user + '/' + name, :path => path
  else
    options[:repo] ||= "git://github.com/#{user}/puppet-#{name}.git"
    options[:ref] ||= if not options.has_key?('ref')
                        'master'
                      end
    mod user + '/' + name, :git => options[:repo], :ref => options[:ref]
  end
end

# Shortcut for a module under development
def dev(name)
  mod 'dev/' + name, :path => "#{ENV['HOME']}/Codes/puppet/modules/#{name}"
end

# GitHub modules
github 'kiuru', 'profile'

# Forge modules
mod 'puppetlabs/git',        '~> 0.3.0'
mod 'puppetlabs/apache',     '~> 1.2.0'
mod 'puppetlabs/mysql',      '~> 3.1.0'
mod 'puppetlabs/ntp',        '~> 3.3.0'
mod 'saz/ssh',               '~> 2.4.0'
