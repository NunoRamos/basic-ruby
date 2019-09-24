module Database
  extend self

  class Contact
    attr_accessor :id, :name, :email, :phone, :company, :is_deleted

    def initialize(name, email, phone, company)
        @id = SecureRandom.hex(5)
        @name = name
        @email = email
        @phone = phone
        @company = company
        @is_deleted = false
    end

    def to_hash
      {
        id: @id,
        name: @name,
        email: @email,
        phone: @phone,
        company: @company
      }
    end

  end

  @contacts = [
    Contact.new("Inês", "ines@princesa.com", "913454345", "Despedida"),
    Contact.new("Nuno", "nuno@princeso.com", "913432456", "Talkdesk"),
    Contact.new("Ricardo", "ricardo@princeso.com", "913456256", "Taldesk"),
    Contact.new("David", "david@princeso.com", "913456256", "Taldesk")
  ]

  def all
    @contacts.map { |contact| contact.to_hash }
  end

  def find(id)
    @contacts.select { |contact| contact.id = id }.first.to_hash
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
