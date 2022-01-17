for i in {1..17}; do
cd Run-${i}
mkdir Analysis
cd Analysis
cp ../../ts_detect.py .
cp ../COLVAR-trp .
sed -e '/SET/d' COLVAR-trp > xxx
sed 's/#! FIELDS/ /' xxx >  edt_COLVAR
echo "Simulation $i"
python ts_detect.py
echo ""
cd ../..
done
