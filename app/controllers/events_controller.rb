class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]

    def index
  	    # Méthode qui récupère tous les evenements et les envoie à la view index (index.html.erb) pour affichage
   	  @events = Event.all
    end
 
   def new
 	    # Méthode qui crée un Evenement vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    @event = Event.new
    end

    def show
    	    # Méthode qui récupère l evenement  concerné et l'envoie à la view show (show.html.erb) pour affichage
    @event = Event.find(params[:id])
  	end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
