class Trimmomatic
    include ActiveModel::Model
    
    attr_accessor(
        :s_file,
        :p_file_R,
        :p_file_L,
        :winSize,
        :winQuality,
        :leadingQ,
        :cropLen,
        :HcropLen,
        :minLen,
        :home_dir,
        :soft_dir,
        :in_dir,
        :out_dir
    )
    
end
