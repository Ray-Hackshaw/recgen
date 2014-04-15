
gcc -std=c99 -Wall mem.c -o mem -lm 
rm test*
for x in {1..1000} ; do ./mem test$x.ppm $x; 
pnmtopng test$x.ppm > test$x.png; 
rm test$x.ppm;
done
