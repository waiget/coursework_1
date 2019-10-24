echo -e "Test no errors thrown when given number\n"

java Dec2Hex 100

if [ $? -eq 0 ]
then
    echo -e "\nTest Pass!\n"
else
    echo "Unexpected error thrown when converting 100 to Hex"
    exit 1
fi

echo -e "Test error is thrown when not given number\n"

java Dec2Hex

if [ $? -ne 0 ]
then
    echo -e "\nTest Pass!\n"
else
    echo "Expected error was not thrown."
    exit 1
fi

echo -e "\nAll tests passed!"
