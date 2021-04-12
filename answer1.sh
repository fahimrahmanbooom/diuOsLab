# ID: 173-15-927

findFactorial() {

	local number=$1
	local fact=1
	
	for ((i=1;i<=number;i++))
		do
			fact=$(($fact*$i))
		done

	echo $fact
}


isPrime() {

	local number=$1

	for((i=2; i<=number/2; i++))
		do
	  		if [ $((number%i)) -eq 0 ]
	  		then
	    		echo "not a prime number."
	  		exit
	  		fi
		done

	echo "a prime number."
}


echo "Enter the number"
read number

if [ $((number%2)) -eq 0 ]
then
	echo "Number is EVEN so the Factorial is $(findFactorial $number)"
else
	echo "Number is ODD and $(isPrime $number)"
fi
