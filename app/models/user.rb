class User < ApplicationRecord
  before_save :downcase_email
  before_create :set_remember_token
  has_secure_password

  # Returns a random 22 length token
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def create_remember_token
    Digest::SHA1.hexdigest(User.new_token)
  end

  def set_remember_token
    self.remember_token = create_remember_token
  end

  private

    def downcase_email
      email.downcase!
    end
end
