cp -R ~/public_html/login/* ~/git_source/login/login
cp -R ~/public_html/sandbox/* ~/git_source/metrc
cd ~/git_source/login
git  add  -A
git commit -a 
git push
cd ~/git_source/metrc
git  add  -A
git commit -a 
git push
cd ~/git_source/metrc_batch/
git  add  -A
git commit -a 
git push
cd ~/git_source/metrc_include
git  add  -A
git commit -a 
git push
