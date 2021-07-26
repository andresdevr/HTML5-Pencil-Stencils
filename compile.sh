definition="Definition.xml"
documentStart="src/definitionStart.xml"
documentEnd="src/definitionEnd.xml"
shapesFolder="src/shapes/*"
propertiesStart="src/propertiesStart.xml"
propertiesEnd="src/propertiesEnd.xml"
propertiesFolder="src/properties/*"
scriptsStart="src/scriptsStart.xml"
scriptsEnd="src/scriptsEnd.xml"
scriptsFolder="src/scripts/*"

cat $documentStart > $definition

#properties
cat $propertiesStart >> $definition
for file in $propertiesFolder
do
	cat $file >> $definition
done
cat $propertiesEnd >> $definition

#scripts
cat $scriptsStart >> $definition
for file in $scriptsFolder
do
	cat $file >> $definition
done
cat $scriptsEnd >> $definition

#shapes
for file in $shapesFolder
do
	cat $file >> $definition
done
cat $documentEnd >> $definition