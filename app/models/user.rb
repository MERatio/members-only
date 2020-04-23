class User < ApplicationRecord
  has_many :posts
  before_save :downcase_email
  before_create :set_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { in: 6..16 }

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
