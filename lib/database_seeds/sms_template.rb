module DatabaseSeeds
  module SmsTemplate
    def self.seed
      # Template::SmsTemplate.create(booking_portal_client_id: client_id, subject_class: "Invitation", name: "referral_invitation", content: "Dear <%= self.name %>, You are invited in <%= self.booking_portal_client.booking_portal_domains.join(', ') %> Please click here. <%= Rails.application.routes.url_helpers.register_url(custom_referral_code: self.referred_by.referral_code) %> or user <%= self.referred_by.referral_code %> code for sign up.") if Template::SmsTemplate.where(name: "referral_invitation").blank?

      return Template::SmsTemplate.count
    end
  end
end
