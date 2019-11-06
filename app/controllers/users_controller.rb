class UsersController < ApplicationController
	 #le helper authenticate_user donne acces au callback, seul un authenticate_user peut acceder a la page show qui montre le profil du user

	  before_action :authenticate_user!, only: [:show]

  def show

  	  # Méthode qui récupère le user concerné et l'envoie à la view show (show.html.erb) pour affichage

    @user = User.find(params[:id])
  end
end
