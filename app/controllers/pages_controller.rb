class PagesController < ApplicationController
    layout "landing"
    layout "application2", :only => [:welcome]

    def welcome
    end

    def landing
    end
end
