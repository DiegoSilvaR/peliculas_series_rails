class DocumentaryFilmsController < ApplicationController
  def index
    @documentaries = DocumentaryFilm.all
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)

    if @documentary_film.save
      redirect_to documentary_films_path, notice: 'El documental se creó exitosamente.'
    else
      render :new
    end
  end

  private

  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end

