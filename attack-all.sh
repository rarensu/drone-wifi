file=$(ls -1 $(1)*csv | tail -n1)
stations=$(awk 'BEGIN { FS = "," } NR>5 { if(length($1)>8) print $1 }' $file)
for station in $stations
do
echo attacking $station
bash attack-one.sh $1 $station
done
echo attacking any
bash attack-any.sh $1
