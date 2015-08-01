class WelcomeController < ApplicationController
  def index
	@todo = Todo.find(:all, :conditions => 'priority >= 5')
	@todos = @todo[0..9]
	@knols = Knol.all
	@stors = Stor.all
	@bugtraqs = Bugtraq.all
  end
end
