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
    # Méthode qui créé un evemenent à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)

    #on verifie que le formulaire envoie bien les params saisis code entre les puts $ non necessaire , mais qui nous permet de checker au debut 
    puts "$" * 60
    puts "ceci est le contenu de params et signifie que le formulaire pointe bien sur create :"
    puts params
    puts "$" * 60

    #le code suivant est le code a rentrer dans $ rails c afin de creer en BDD un user test un event test qui a donc ce user associe. et on check si il y les rollbacks et si ca marche bien
    #e = Event.new(blabla)
    #e.save
    #sil n y a pas de rollbacks notre save est bien effectue et notre @gossip sauve en BDD
    @event = Event.new(start_date: params[:start_date], duration: params[:duration], title: params[:title], description: params[:description], price: params[:price], location: params[:location], admin_id: 1)
 #=> {:title=>["must exist"], :title=>["is too short (minimum is 3 characters)"], :content=>["can't be blank"] etc exemple de rollbacks}

    if @event.save # essaie de sauvegarder en base @event
      flash[:success] = "The super Event was succesfully saved !"
    # si ça marche, il redirige vers la page d'index du site
        redirect_to events_path #redirect_to va passer   /   eventss#index cf $ rails routes | grep root

  else
    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    render :new
  end
end

    def edit
    end

    def update
    end

    def destroy
    end
end
