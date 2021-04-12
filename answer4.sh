echo "Enter Century"
read century

end=$(($century * 100))
init=$(($end - 99))

echo "$init and $end"
