class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by({"email" => params["email"]})
        #if user's password matches submitted password
        # send to companies
        if BCrypt::Password.new(@user["password"]) == params["password"]
            session["user_logged_in"]= @user["id"]
            flash["notice"] = "You log in !"
            redirect_to "/companies"
        #otherwise send to log in page
        else
            flash["notice"] = "Nope"
            redirect_to "/sessions/new"
        end
    end
end
