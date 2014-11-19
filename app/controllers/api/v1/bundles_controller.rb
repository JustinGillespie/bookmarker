module Api
	module V1
    class BundlesController < Api::BaseController
			  		
  		def index
        @bundles = params[:tag] ? Bundle.tagged_with(params[:tag]) : Bundle.all
  		end

      def show
        @bundle = Bundle.find(params[:id])
      end

      private

        def bundle_params
          params.require(:bundle).permit(:name, :tag_list)
        end

		end # BundlesController
  end # V1
end # Api
