git add .
git commit -a $(cat build.ini) 
git commit -m $(cat build.ini)
git remote set-url origin git@github.com:dj--alex/m2k 
git config pull.rebase true
git config user.email „dj--alex@ya.ru”
git config user.name „dj--alex”
git pull
git pull --rebase origin master
git push -u origin master

#https://wojst.pl/github-repozytoria-zdalne-i-pull-requesty-git/
# predw zaloginsja tut  ssh -T git@github.com !!!!   fdb
#git config –global user.email „dj--alex@ya.ru”
#git config user.email „dj--alex@ya.ru”
#git config user.name „dj--alex”


