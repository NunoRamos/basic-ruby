module Database
  extend self

  class Contact
    attr_accessor :name, :email, :phone, :company, :is_deleted

    def initialize(name, email, phone, company)
        @name = name
        @email = email
        @phone = phone
        @company = company
        @is_deleted = false
    end

    def to_hash
      {
        name: self.name,
        email: self.email,
        phone: self.phone,
        company: self.company
      }     
    end

  end

  @contacts = [
    Contact.new("Inês", "ines@princesa.com", "913454345", "Despedida"), 
    Contact.new("Nuno", "nuno@princeso.com", "913432456", "Taldesk"),
    Contact.new("Ricardo", "ricardo@princeso.com", "913456256", "Taldesk"),
    Contact.new("David", "david@princeso.com", "913456256", "Taldesk")
  ]

  def all
    @contacts.map { |contact| contact.to_hash }
  end

  def find
    # Your code..
  end

  def store
    # Your code..
  end

  def update
    # Your code..
  end

  def delete
    # Your code..
  end
end
