parallel --no-notice rm -r ::: s1/* s2/* s3/* s4/* s5/* s6/* s7/* s8/* s9/* s10/* s11/* s12/* s13/*
parallel --no-notice rm -r ::: s14/* s15/* s16/* s17/* s18/* s19/* s20/* s21/* s22/* s23/* s24/* s25/*
# 파일이름들  space delete
cd s
for f in *\ *; do mv "$f" "${f// /_}"; done
cd s
parallel convert {} -resize 3000x3000 {.}.png ::: *.* 
rm *.jpg
rm *.JPG
parallel convert {} ../s25/{} ::: *.*
cd ..
cd s
parallel gmic {} -fx_array_fade 1,1,0,0,80,90,0,0 -o ../s18/{} ::: *.*
cd ..
cd s18
parallel convert {}  -set filename:new  ../s25/"%tf1" "%[filename:new].png" ::: *.*
cd ..
cd s18
parallel gmic {} -fx_rotate_tileable 45,8,0 -o ../s19/{} ::: *.*
cd ..
cd s19
parallel convert {}  -set filename:new  ../s25/"%tf2" "%[filename:new].png" ::: *.*
cd ..
cd s19
parallel gmic {} -fx_rotate_tileable 45,8,0 -o ../s5/{} ::: *.*
cd ..
cd s5
parallel convert {} -resize 3000x3000 {} ::: *.* &&
parallel convert {}  -set filename:new  ../s25/"%tf3" "%[filename:new].png" ::: *.*
cd ..
cd s5
parallel gmic {} -fx_rotate_tileable 90,8,0 -o ../s6/{} ::: *.*
cd ..
cd s6
parallel convert {}  -set filename:new  ../s25/"%tf4" "%[filename:new].png" ::: *.*
cd ..
cd s18
parallel gmic {} -fx_array_fade 1,1,0,0,80,90,0,0 -o ../s3/{} ::: *.*
cd ..
cd s3
parallel convert {}  -set filename:new  ../s25/"%tf1a" "%[filename:new].png" ::: *.*
