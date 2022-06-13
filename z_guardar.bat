@echo "--------------------------------------" 
@echo "iniciando update"
@echo "--------------------------------------" 
@echo "listando tags"
git tag
@echo "--------------------------------------" 
(pause)
 
set /p Version=INGRESE VERSION: 

@echo %DATE%
@echo %TIME%
set datetimef=%DATE% %TIME%
 set /p id=Enter TAG: 
SET datetimef=%datetimef% %id%
 
SET datetimef=%datetimef:/=_%
SET datetimef=%datetimef::=_%
SET datetimef=%datetimef: =.%
SET datetimef=%datetimef:..=.%

@echo %datetimef%


git add .
git commit -m %datetimef% 
git remote add origin git@github.com:AlbertGoico/print_preview_test.git
git branch -M main
git push -u origin main
set passphrase=%lgoicocheap@gmail.com%

@echo "agregar tag para generar release"
git tag -a v%Version% -m %datetimef% 


@echo "PUBLICANDO TAGS"
git push --tags


@echo %passphrase%
@echo lgoicocheap@gmail.com
@echo "-------------------------------------------"
(pause)