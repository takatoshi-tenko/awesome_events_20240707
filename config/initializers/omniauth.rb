Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "Ov23li8VFSW7OjnRvQ46", "da791bb320b4506a0b79bcba5c210bf391fe98cd"
  else
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end