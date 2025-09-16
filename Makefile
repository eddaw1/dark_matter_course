HTMLPATH 	= _build/_page/dark_matter_detection
EXEC		= dark_matter_detection

all : ${EXEC}

${EXEC} :
	jupyter-book build --toc ./_toc.yaml .

commit : 
	git commit -am "Latest notes update"
	git push
	ghp-import -n -p -f _build/html

clean :
	rm -rf _build 




