(6 sloc) 0.222 kb
require 'rack/contrib/try_static'
use Rack::TryStatic,
  :root => "public",
  :urls => %w[/ /en.html],
  :try => ['.html', 'index.html', '/index.html']
run lambda { [404, {'Content-Type' => 'text/html'}, ['Not Found']]}
