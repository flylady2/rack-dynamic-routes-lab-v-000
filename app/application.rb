require 'pry'
class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    #binding.pry

    if req.path.match(/items/) && @@items != []
      item_name = req.path.split("/items/").last

      item = @@items.find{|i| i.name == item_name}
        resp.write item.price

    elsif req.path.match()
              resp.write "Route not found"
              resp.status = 404
    else
      resp.write "Item not found"
      resp.status = 400
    end



  end




end
