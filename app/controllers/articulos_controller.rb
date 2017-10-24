class ArticulosController < ApplicationController
	def index
		@articulos = Articulo.all
	end

	def show
		@articulo = Articulo.find(params[:id])
	end

	def new
		@articulo = Articulo.new
	end

	def edit
		@articulo = Articulo.find(params[:id])
	end

	def create
		@articulo = Articulo.new(articulos_parametros)

		if @articulo.save
			redirect_to  @articulo
		else
			render 'new'
		end
	end

	def update
	  @articulo = Articulo.find(params[:id])

	  if @articulo.update(articulos_parametros)
	    redirect_to @articulo
	  else
	    render 'edit'
	  end
	end

private
	def articulos_parametros
		params.require(:articulo).permit(:titulo, :texto)
	end
end
