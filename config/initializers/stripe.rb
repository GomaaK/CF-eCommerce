if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
		:secret_key => ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => 'pk_test_DsLPFcqsIkk2rfK3zLFF7Jyv',
		:secret_key => 'sk_test_AWp7J76eZdBadFIP4w454Sjz'
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]