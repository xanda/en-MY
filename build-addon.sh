BUILDnum=`head -n 1 dictionaries/en-MY.dic`
cat Mozilla-addon/install.rdf.orig | sed 's/\[build\_number\]/'$BUILDnum'/g' > Mozilla-addon/install.rdf

cp dictionaries/en-MY.* Mozilla-addon/dictionaries/
cd Mozilla-addon

whichZIP=`which zip`

if [ "$whichZIP" != "/usr/bin/zip" ];
then
   echo "===============ERROR================"
   echo " ERROR! zip is not installed"
   echo "===============DONE=================" && exit 1
fi

zip ../en-MY-Rojak.xpi dictionaries/* install.rdf icon.png
rm dictionaries/*.dic
rm install.rdf

echo ""
echo "en-MY-Rojak.xpi created!"
