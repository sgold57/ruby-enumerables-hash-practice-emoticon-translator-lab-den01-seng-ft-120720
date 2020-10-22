require "yaml"
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
  library.each {|emoticon_def, emoticon_array| library[emoticon_def] = {:english => emoticon_array[0], :japanese => emoticon_array[1]}}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

#bilingual_dict = {}
#bilingual_dict[emoticon_def] = {:english => emoticon_array[0], :japanese => emoticon_array[1]}
