class LgController < ApplicationController

  def test

    render plain: "앙 앵지 귀엽당"

  end

  def sign_up

    u = User.new
    u.loginId = params[:loginId]
    u.loginPw = params[:loginPw]
    u.userName = params[:name]
    u.phoneNum = params[:phoneNum]
    u.email = params[:email]
    u.profileURL = params[:profileURL]
    u.save

    result = {"result" => TRUE, "message" => "회원가입 성공", "user" => u}
    render json: result

    end

end
