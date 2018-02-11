class Survey
    include ActiveModel::Model
    
    attr_accessor(
        :home_dir,
        :software_dir,
        :input_dir,
        :output_dir
        #:read_type,
        #:input_files,
    )
    
    validates :home_dir, presence: true
    validates :software_dir, presence: true
    validates :input_dir, presence: true
    validates :output_dir, presence: true
    
    def register
        if valid?
        end
    end
    
    private
    
    def create_user
    end
    
end
