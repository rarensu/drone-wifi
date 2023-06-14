bash setup.sh
file=$(ls -1 $(1)*csv | tail -n1)
stations=$(awk 'BEGIN { FS = "," } NR>5 { if(length($1)>8) print $1 }' $file)
for station in $stations
do
echo attacking phone $station
bash attack-one.sh $1 $station
echo 
done
echo attacking any phone
bash attack-any.sh $1
