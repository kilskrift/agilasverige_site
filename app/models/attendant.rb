class Attendant < DataMapper::Base

  has_many :speaking_proposals

  validates_presence_of :first_name, :last_name, :street_address, :postal_address, :message => "måste fyllas i"

  property :first_name, :string
  property :last_name, :string
  property :email, :string
  property :co_address, :string
  property :street_address, :string
  property :zip_code, :string
  property :postal_address, :string
  property :country, :string
  property :organization, :string
  property :telephone_number, :string
  property :wants_to_speak, :boolean
  
  def add_speaking_proposal(proposal)
    speaking_proposals << proposal
  end
  
  def prospective_speaker?
    !speaking_proposals.empty?
  end
  
  def speaker?
    speaking_proposals.each do |proposal|
      return true if proposal.accepted?
    end
  end
  
end