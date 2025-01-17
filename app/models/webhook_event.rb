# == Schema Information
#
# Table name: webhook_events
#
#  id         :bigint(8)        not null, primary key
#  webhook_id :integer
#  event      :string(255)
#  created_at :datetime
#
# Indexes
#
#  index_webhook_events_on_webhook_id  (webhook_id)
#

class WebhookEvent < ApplicationRecord

  EVENTS = [
    'MessageSent',
    'MessageDelayed',
    'MessageDeliveryFailed',
    'MessageHeld',
    'MessageBounced',
    'MessageLinkClicked',
    'MessageLoaded',
    'DomainDNSError',
    'SendLimitApproaching',
    'SendLimitExceeded'
  ]

  belongs_to :webhook

  validates :event, :presence => true

end
