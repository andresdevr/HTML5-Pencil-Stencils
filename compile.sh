definition="Definition.xml"
cat init.xml > $definition
for file in "src/*"
do
	cat $file >> $definition
done

cat end.xml >> $definition