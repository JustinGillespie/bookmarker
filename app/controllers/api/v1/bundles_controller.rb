module Api
	module V1
    class BundlesController < Api::BaseController
			  		
  		def index
        @bundles = Bundle.all
  		end

      private

        def bundle_params
          params.require(:bundle).permit(:name, :tag_list)
        end

		end # BundlesController
  end # V1
end # Api
