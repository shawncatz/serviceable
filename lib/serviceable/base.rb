class Serviceable::Base
  class << self
    def request(path, params={}, options={})
      p = {

      }.merge(params)
      o = {
          params: p
      }.merge(options)
      u = url+path
      puts "u: #{u} #{o.inspect}"
      logger.info "u: #{u} #{o.inspect}"
      RestClient.get u, o
    end

    def json(path, params={}, options={})
      json = request(path, params, options)
      JSON.parse(json)
    end

    def xml(path, params={}, options={})
      xml = request(path, params, options)
      XmlSimple.xml_in(xml, {'ForceArray' => false})
    end
  end
end
