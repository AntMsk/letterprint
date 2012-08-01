class Letter < ActiveRecord::Base
    def self.today
       self.where("created_at >= ?", Time.now.beginning_of_day).count
    end
   
    def self.printing
         self.archive_old_printed
         self.archive_now_printed         
    end
    private
    def self.archive_now_printed
          self.where('letters.printed' => -1).each do |u|
             u.printed=0;
             u.save
          end    
    end
    
    def self.archive_old_printed
      t = Time.now.to_i;
        self.where('letters.printed' => 0).each do |u|
         u.printed=t;
         u.save
        end      
    end
end
