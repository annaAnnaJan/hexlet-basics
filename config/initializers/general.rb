# frozen_string_literal: true

require 'app_host'

Rails.application.routes.default_url_options[:host] = AppHost.canonical
