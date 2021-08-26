class ApplicationController < ActionController::API
    def not_found
        render json: { error: 'not_found' }
    end
    
    def authorize_request
		
        header = request.headers['Authorization']
        header = header.split(' ').last if header
		print("header = " + header)
		print("params = " + params.to_s)
        begin
          @jwt_payload = JsonWebToken.decode(header)
        rescue JWT::DecodeError => e
          render json: { errors: e.message }, status: :unauthorized
        end
    end
end
