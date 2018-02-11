class Bbduk
    include ActiveModel::Model
    
    attr_accessor(
        :input_files,
        :trimming_options,
        :read_options, #Single or Paired
    )
end