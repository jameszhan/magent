$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'moped'
require 'set'
require 'uuidtools'

require 'magent/stats'
require 'magent/failure'

require 'magent/encoder'

require 'magent/utils'
require 'magent/generic_channel'

require 'magent/processor'

require 'magent/async'
require 'magent/async_channel'

if defined?(Rails) && Rails.version >= "3.0.0"
  require 'magent/railtie'
elsif defined?(Rake)
  require 'magent/tasks'
end

module Magent
  @@database_name = "magent"

  @@config = {
    "host" => "0.0.0.0",
    "port" => 27017
  }

  def self.connection
#    @@connection ||= Moped::Connection.new
    session
  end

  def self.session
    @@session ||= Moped::Session.new
  end
  def self.logger
#    connection.logger
    session.logger
  end

  def self.connection=(new_connection)
    @@connection = new_connection
  end
  
  def self.session=(new_session)
    @@session = new_session
  end

  def self.database=(name)
    @@database = nil
    @@database_name = name
  end

  def self.database
    @@database ||= Magent.session.databases[@@database_name]
  end

  def self.config
    @@config
  end

  def self.config=(config)
    @@config = config
  end

  def self.sync_mode
    @@sync_mode ||= false
  end

  def self.sync_mode=(m)
    @@sync_mode = m
  end

  def self.connect(environment, options={})
    raise 'Set config before connecting. Magent.config = {...}' if config.nil? || config.empty?

    env = config_for_environment(environment)
    Magent.session = Moped::Session.new(["%s:%d"%[env['host'],env['port']]], options)
    Magent.database = env['database']
    Magent.database.authenticate(env['username'], env['password']) if env['username'] && env['password']
  end

  def self.setup(config, environment = nil, options = {})
    self.config = config
    connect(environment, options)
  end

  # deprecated
  def self.host=(host)
    @@config['host'] = host
  end

  def self.port=(port)
    @@config['port'] = port
  end

  def self.db_name=(db_name)
    @@database_name = db_name
  end

  def self.auth(username, passwd)
    @@config['username'] = username
    @@config['password'] = passwd
  end

  private
  def self.config_for_environment(environment)
    env = environment ? config[environment.to_s] : config

    return env if env['uri'].nil? || env['uri'].blank?

    uri = URI.parse(env['uri'])
    raise InvalidScheme.new('must be mongodb') unless uri.scheme == 'mongodb'

    {
      'host'     => uri.host,
      'port'     => uri.port,
      'database' => uri.path.gsub(/^\//, ''),
      'username' => uri.user,
      'password' => uri.password,
    }
  end
end

