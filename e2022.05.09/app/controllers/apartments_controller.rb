class ApartmentsController < ApplicationController
    def index
        @building = Building.find params[:building_id]
        @apartments = @building.apartments
    end

    def new
        @building = Building.find params[:building_id]
        @apartment = Apartment.new
    end

    def create
        @building = Building.find params[:building_id]
        @apartment = Apartment.new(apartment_params)
        @apartment.building = @building             
        respond_to do |format|
            if @apartment.save
                format.html { redirect_to building_apartment_path(@building, @apartment), notice: 'El departamento fue registrado con éxito.' }
            else
                format.html { render :new }
        end
    end

    def show
        @building = Building.find params[:building_id]
        @apartment = Apartment.find(params[:id])
    end

    def edit
        @building = Building.find params[:building_id]
        @apartment = Apartment.find(params[:id])
    end

    def update
        @building = Building.find params[:building_id]
        @apartment = Apartment.find params[:id]
        respond_to do |format|
            if @apartment.update(apartment_params.merge(building: @building))#             Se añade el building que se obtuvo en la llamada a find_building
                format.html { redirect_to building_apartment_path(@building, @apartment), notice: 'El departamento fue actualizado correctamente.' }
                else
                format.html { render :edit }
            end
        end
    end
    
    def destroy
        @apartment = Apartment.find params[:id]
        @apartment.destroy
        respond_to do |format|
            format.html { redirect_to building_apartments_url, notice: 'El departamento fue borrado exitosamente.' }
        end
    end

end

private
    def apartment_params
        params.require(:apartment).permit(:number)
    end
end