
puts "Enter message to send: "
message = gets.chomp

puts "Enter person to send to: "
number = gets.chomp

puts "Enter number of messages to send: "
messageNum = gets.chomp.to_i

$totalMsg = 1

puts "Flooding..."

command = 'imessage -t "' + message + '" -c ' + number
puts command


until $totalMsg > messageNum
	value = system(command)
	puts value
	$totalMsg = $totalMsg + 1
end until $totalMsg > messageNum

