echo "-------menu--------"
echo "Entet 1 for Create"
echo "Enter 2 for Update"
echo "Enter 3 for Display"
echo "Enter 4 for Delete"
echo "Enter 5 for Exite"
read ch
while :
do
case $ch in 
1)
echo "Enter The address book name you want to create"
read a
if [ -f $a ]
then 
echo "file is aleready exist"
else
touch $a
gedit $a
echo "$a is created"
fi
;;
2)
echo "enter the address book name you want to display"
read a
if [ -f $a ]
then
cat $a
else 
echo "address book does not exist"
fi
;;
3)
echo "enter the address book name you want to update"
read a 
if [ -f $a ]
then
gedit $a
else 
echo "address book does not exist"
fi
;;
4)
echo "Enter the address book name you want to delete"
read a
if 
[ -f $a ]
then
echo "are you sure you want to delete address book ;"
rm $a
else 
echo "adress book does not exist"
fi
;;
5)
echo "Exit"
;;
esac
done
