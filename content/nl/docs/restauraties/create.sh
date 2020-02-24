array=( $1 ) # do not use quotes in order to allow word expansion
echo "---" > $1.md
echo "title: \"$1\"" >> $1.md
echo "date: ${array[0]}" >> $1.md
echo "tags: [\"restauraties\"]" >> $1.md
echo "---" >> $1.md
echo "" >> $1.md
echo "{{< gallery dir=\"/images/restauraties/$1\" />}}" >> $1.md


