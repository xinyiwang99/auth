class SessionsController < ApplicationController
    def new
    end

    def create
        redirect_to "/sessions/new"
    end
end
