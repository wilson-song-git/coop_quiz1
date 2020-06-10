for f in *txt #renames the .txt fikes
do
mv "$f" "new_${f}"
done

find . -name "*.bak" -type f -delete #deletes all the .bak

b=10
for p in *.py
do
count=$(wc -1 "$p")
if [ "$count" -ge "$b" ]
then
mv "$p" "long_${p}"
else
mv "$p" "short_${p}"
fi
done
