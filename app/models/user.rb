class User < ActiveRecord::Base
  has_many :measurements
  belongs_to :admin

  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.full_name = auth.info.full_name
      user.email = "arunumap@gmail.com"
      user.oauth_token = auth.credentials.token
      user.oauth_secret = auth.credentials.secret
    end
  end
end