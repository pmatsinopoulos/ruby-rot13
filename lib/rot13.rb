def rot13_one(secret_message)
  a_ord = 'a'.ord
  a_up_ord = 'A'.ord
  rotation = 13

  result = []
  secret_message.each_char do |character|
    unless character >= 'a' && character <= 'z' || character >= 'A' && character <= 'Z'
      result.push(character)
      next
    end

    ord = character.ord
    start_ord = character >= 'a' && character <= 'z' ? a_ord : a_up_ord
    rotation_point = start_ord + rotation
    result.push((ord >= rotation_point ? (ord - rotation_point + start_ord) : ord + rotation).chr)
  end
  result.join
end

def rot13(secret_messages)
  secret_messages.map { |sm| rot13_one(sm) }
end
