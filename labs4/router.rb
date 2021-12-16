require_relative 'posts_controller'
require_relative 'comments_controller'

class Router
  def initialize
    @routes = {}
  end

  def init
    resources(PostsController, 'posts')
    resources(CommentsController, 'comments')

    loop do
      print 'Print number you want to interact (1 - Posts, 2 - Comments, q - Exit): '
      number = gets.chomp.upcase.strip

      PostsController.connection(@routes['posts']) if number == '1'
      CommentsController.connection(@routes['comments']) if number == '2'
      break if number == 'Q'
    end

    puts 'Good bye!'
  end

  def resources(klass, keyword)
    controller = klass.new
    @routes[keyword] = {
      'GET' => {
        'index' => controller.method(:index),
        'show' => controller.method(:show)
      },
      'POST' => controller.method(:create),
      'PUT' => controller.method(:update),
      'DELETE' => controller.method(:destroy)
    }
  end
end

router = Router.new
router.init