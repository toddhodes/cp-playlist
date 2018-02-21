files=`grep Location Bruce.xml  | cut -d\> -f4- | cut -d\< -f1 | cut -d/ -f3-`
count=0
for i in $files
do   
  ((count++))
  name=`echo $i | sed 's/%[0-9A-Z][0-9A-Z]/*/g'`
  echo cp "$name" /Volumes/BRUCE/$count-`basename $i`; 
  #eval cp "$name" /Volumes/BRUCE/$count-`basename $i`; 

done


