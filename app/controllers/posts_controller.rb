class PostsController < ApplicationController

    def show
        @post = Post.find_by({"id" => params["id"]})
    end

    def new
        @post = Post.new
    end

    def create
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["descrption"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["post_id"] = params["post"]["post_id"]
        @post.save
        redirect_to "/places"
    end

end
