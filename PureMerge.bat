mkdir Test-PureMerge
cd Test-PureMerge
git init
echo ^<html^>^<head^>^<title^>Hello World^</title^>^</head^>^<body^>^<h1^>Hello^</h1^>^</body^>^</html^> >> index.html
git add .
git commit -m "Create Webpage"
git branch dev
git checkout dev
mkdir css
cd css
echo body { margin: 0; } >> site.css
cd ..
mkdir js
cd js
echo alert('hello world'); >> site.js
cd ..
git add .
git commit -m "Add css and js file"
git branch release-v1
git checkout release-v1
cd css
echo h1 { color: red; } >> site.css
git add .
git commit -m "Added H1 color style"
cd ..
git checkout master
git merge release-v1
git checkout dev
git merge release-v1
gitk master
gitk dev