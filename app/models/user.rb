class User < ActiveRecord::Base
has_many :measurements

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.full_name = auth.info.full_name
      user.email = "arunumap@gmail.com"
      user.oauth_token = auth.credentials.token
      user.oauth_secret = auth.credentials.secret
      user.save!
    end
  end
end