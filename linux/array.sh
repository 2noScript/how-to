Fruits=('Apple' 'Banana' 'Orange')

# Fruits[0]="Apple"
# Fruits[1]="Banana"
# Fruits[2]="Orange"


# echo ${Fruits[0]}
# echo ${Fruits[1]}
# echo ${Fruits[2]}



echo ${Fruits[0]}
# echo ${Fruits[-1]}
echo ${Fruits[*]}
echo ${Fruits[@]}
echo ${#Fruits[@]}
echo ${#Fruits}
echo ${#Fruits[3]}
echo ${Fruits[@]:3:2}
echo ${!Fruits[@]}


