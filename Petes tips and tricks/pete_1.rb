DEALER_ACTIONS = {
  hit:    "Dealer hits!",
  busted: "Dealer busted!",
  stay:   "Dealer stays!"
}.freeze

def dealer_action
  if dealer.hand.value < 17
    :hit
  elsif dealer.busted?
    :busted
  else
    :stay
  end
end

def dealer_turn
  display_dealer_turn_message
  loop do
    puts ""
    dealer.show_hand
    puts "", "Dealer's hand value is #{dealer.hand.value}."
    sleep 1
    action = dealer_action
    puts "", DEALER_ACTIONS[action]

    break unless action == :hit
    deck.draw_card!(dealer.hand.dealt_cards)
    sleep 1
  end
  sleep 1
end
