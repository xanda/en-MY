grep -v '^ *$' en-MY.txt | sort | uniq | wc -l | grep -E -o '[0-9]{1,}' > dictionaries/en-MY.dic
echo "" >> dictionaries/en-MY.dic
grep -v '^ *$' en-MY.txt | sort | uniq >> dictionaries/en-MY.dic
#echo "" >> dictionaries/en-MY.dic
echo ""
echo "Dictionaries compiled!"