class TestController < ApplicationController
    before_action :authorize_request, except: :create
    #before_action :find_user, except: %i[create index]
    def show
        print("@jwt_payload = " + @jwt_payload['seq'].to_s)
        render json: {'abc':'abc'}, status: :ok
    end
end
