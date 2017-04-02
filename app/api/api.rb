class API < Grape::API
  format :json
  prefix 'api'
  version 'v1', using: :path

  # resource :reviews do
  # desc "List all review"
  #  get do
  #    Review.all
  #  end
  # end


  resource :upload do
  	post do
  		applog = params[:applog]
        userName = params[:userName]

  		attachment = {
  			:filename => applog[:filename],
  			:type => applog[:type],
  			:headers => applog[:head],
  			:tempfile => applog[:tempfile]
  		}

  		user = User.new


  		user.applog = ActionDispatch::Http::UploadedFile.new(attachment)

  		user.applog_path = attachment[:filename]

  		user.name = userName

  		user.save
  	end

end

end
