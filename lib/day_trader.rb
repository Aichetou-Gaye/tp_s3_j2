 def day_trader(prices)
  # Si la liste contient moins de 2 jours, on ne peut ni acheter ni vendre
  return [] if prices.length < 2

  # On initialise le prix minimum avec le premier jour
  min_price = prices[0]
  min_day = 0

  # On initialise le profit maximum à 0
  # Et on prépare une variable pour stocker les meilleurs jours d'achat/vente
  max_profit = 0
  best_days = []

  # On parcourt chaque prix avec son index (le jour)
  prices.each_with_index do |price, day|
    # Si le prix du jour est plus bas que le minimum actuel,
    # on met à jour le jour d'achat potentiel
    if price < min_price
      min_price = price
      min_day = day

    # Sinon, on vérifie si vendre aujourd'hui serait plus rentable
    elsif price - min_price > max_profit
      max_profit = price - min_price
      best_days = [min_day, day] # On enregistre les jours d'achat et de vente
    end
  end

  # Si aucun profit n'a été trouvé, on retourne [0, 0] par défaut
  # Sinon, on retourne les meilleurs jours trouvés
  best_days.empty? ? [0, 0] : best_days
end