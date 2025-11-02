# frozen_string_literal: true

def caesar_cipher(sentence, key) # rubocop:disable Metrics/MethodLength,Metrics/AbcSize
  majuscules = %w[A B C D E F G H I J
                  K L M N O P Q R S T
                  U V W X Y Z]
  minuscules = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]

  resultats = ''
  sentence.each_char do |word|
    if minuscules.include?(word)

      index = minuscules.index(word)
      index_key = (index + key) % 26
      resultats += minuscules[index_key]

    elsif majuscules.include?(word)

      index = majuscules.index(word)
      index_key = (index + key) % 26
      resultats += majuscules[index_key]

    else
      resultats += word
    end
  end
  resultats
end
