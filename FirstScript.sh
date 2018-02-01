#!/bin/sh

pwd
echo "CONTENTS OF THE CURRENT DIRECTORY:"
ls
echo "CREATING FILE1"
touch file1
echo "SAME DIRECTORY AFTER CREATING FILE1"
ls
echo "This is file1." > file1
echo "Just two lines." >> file1
echo "CONTENTS OF FILE1:"
cat file1
mkdir dir1
cp file1 dir1
rm file1
cd dir1
pwd
echo "MOVED FILE1 TO THIS NEW DIRECTORY:"
ls
mv file1 ..
cd ..
echo "MOVED IT BACK AND DELETING DIR1 DIRECTORY"
rmdir dir1
echo "This is file2." > file2
echo "Just two lines." >> file2
echo "Like I said:" >> file2
echo "Just two short lines." >> file2
echo "(Or five...)" >> file2
echo "CREATED FILE2; ITS' CONTENTS:"
cat file2
echo "PRINTING FILE2 LINES CONTAINING 'two'"
grep two file2
diff file1 file2 > file3
echo "DIFFERENCES BETWEEN FILE1 AND FILE2, CAPTURED IN FILE3:"
cat file3
echo "DELETING ALL CREATED FILES"
rm file*
echo "PRINTING LAST 3 LINES OF THE /etc/passwd FILE:"
tail -3 /etc/passwd

return 0

