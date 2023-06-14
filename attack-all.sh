stations=$(awk 'BEGIN { FS = "," } NR>5 { print $1 }' ${1}.csv)
for station in $stations
do
echo attacking $station
bash attack-one.sh $1 $station
done
echo attacking any
bash attack-any.sh $1
