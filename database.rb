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
        company: @company,
        is_delete: @is_deleted
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

  def delete(contact_name, is_hard)
    if is_hard
      index = @contacts.find_index { |element| element.name == contact_name }
      return false if index.nil?
      @contacts.delete_at (index)
    else
      contact = @contacts.find { |contact| contact.name == contact_name }
      return false if contact.nil?
      contact.is_deleted = true
    end
  end
end
