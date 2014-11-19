module Api
	module V1
    class TagsController < Api::BaseController
			  		
  		def index
        @tags = ActsAsTaggableOn::Tag.all
  		end

		end # TagsController
  end # V1
end # Api

