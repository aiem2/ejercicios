class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    enum group_type: [:Boyband, :Girlband, :Band]
    def presentations
        @presentations = self.concerts.count
        
    end
    
    def this_month
        if @presentations > 0 then
            @month = Time.now.month
            self.concerts.select {|m| m.date.month == @month}.count    
            else
            @month = "No registra conciertos"
        end 
    end
    
    def last
        if @presentations > 0 then
            @last = self.concerts.last.date.strftime("%Y %B %A")
            else
            @last = "No registra conciertos"
        end 
    end
    
    def max
        if @presentations > 0 then
            @max = self.concerts.map {|max| max.attendance}.max
            else
            @max = "No registra conciertos"
        end 
    end

    def max_dur
        if @presentations > 0 then
            @max_dur = self.concerts.map {|max| max.duration}.max
            else
            @max_dur = "No registra conciertos"
        end 
    end
end
