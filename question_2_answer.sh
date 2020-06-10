for f in *txt #renames the .txt fikes
do
mv "$f" "new_${f}"
done

find . -name "*.bak" -type f -delete #deletes all the .bak

for p in *.py
do
c='cat$p|wc-1'
if test $c-ge 10
then
mv "$p" "long_${p}"
else
mv "$p" "short_${p}"
done
