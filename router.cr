require "./extractor"
require "./controller"

class Router
  def self.dispatch(path)
    controller = Controller.new
    action = Extractor.extract(path)

    # if controller.responds_to?(:action)
    #   "yes, #{action}"
    # else
    #   "no #{action}"
    # end

    # if Controller.responds_to?(action)
    #   respond Controller.send(action)
    # else
    #   respond("Somewhere else")
    # end
    respond("Welcome")
  end
end
