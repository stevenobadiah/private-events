module UsersHelper
    def users_params
        params.require(:user).permit(:username)
    end
end
