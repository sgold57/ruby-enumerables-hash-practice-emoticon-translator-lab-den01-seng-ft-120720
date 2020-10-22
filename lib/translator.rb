require "yaml"
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
  library.each {|emoticon_def, emoticon_array| library[emoticon_def] = {:english => emoticon_array[0], :japanese => emoticon_array[1]}}
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  binding.pry
  desired_emo = library.find{|definition, hash| emoticon == definition[hash]}
  binding.pry
  desired_emo[:japanese]
end

def get_english_meaning
  # code goes here
end

#bilingual_dict = {}
#bilingual_dict[emoticon_def] = {:english => emoticon_array[0], :japanese => emoticon_array[1]}
