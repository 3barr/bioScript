class Trimmomatic
    include ActiveModel::Model
    
    attr_accessor(
        :s_file,
        :s_files,
        :p_file_R,
        :p_file_L,
        :p_files_R,
        :p_files_L,
        :Qscore,
        :winSize,
        :winQuality,
        :leadingQ,
        :cropLen,
        :HcropLen,
        :minLen
    )
    
end
