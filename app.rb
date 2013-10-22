require 'sinatra'

class MyApp < Sinatra::Base

  enable :sessions, :protection

  configure do
    set :public_folder, Proc.new { File.join(root, "static") }
    set :upload, Proc.new { File.join(root, "upload") }
  end

  configure :development do
    enable :logging, :dump_errors, :raise_errors
  end

  get '/' do
    erb :index
  end

  get '/stats' do
    erb :stats
  end

  post '/upload' do

    file_name = "#{params[:myfile][:filename]}"

    path = "./upload/#{file_name}"

    File.open(path, "w") do |f|
        f.write(params['myfile'][:tempfile].read)
      end

      erb "Wow, file has ok!"
  end

  error 400..510 do
    erb :error_page
  end

  get '/*' do
    status 405
  end

end
