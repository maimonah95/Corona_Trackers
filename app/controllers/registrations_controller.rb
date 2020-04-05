class RegistrationsController < Devise::RegistrationsController

    def sign_up_params
        params.require(:user).permit(:email,:password,:password_confirmation,:name,:age,:phone)
    end
end
