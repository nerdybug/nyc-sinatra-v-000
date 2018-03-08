$:.unshift '.'
require 'config/environment'

use Rack::Static, :urls => ['/css'], :root => 'public' # Rack fix allows seeing the css folder.

if defined?(ActiveRecord::Migrator) && ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending run `rake db:migrate` to resolve the issue.'
end
<<<<<<< HEAD
use Rack::MethodOverride
=======

>>>>>>> b08c07d419e027728076727b1a8904bebe78dec9
use FiguresController
use LandmarksController
run ApplicationController
