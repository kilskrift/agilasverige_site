class SpeakingProposal 

  include MongoMapper::Document

  belongs_to :speaker, :class_name => "Attendant", :foreign_key => :attendant_id

  key :title, String, :required => true
  key :abstract, String, :required => true
  key :filename, String


  def snake_title
    title.gsub(/[^A-Za-z0-9]/,"")
  end


end

