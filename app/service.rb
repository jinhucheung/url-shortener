# encoding: utf-8
module App
  class Service < ::Guillotine::Service
    def get(code)
      response = super(code)

      if 404 == response.first && default_url && !default_url.empty?
        response = [302, {"Location" => default_url}]
      end

      response
    end
  end
end