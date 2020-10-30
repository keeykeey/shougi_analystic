
mounted_dir=~/webApp/shougi_analystic/

if [ ! -d "$mounted_dir" ]; then
    mkdir "$mounted_dir"
else
    echo 'mounted directory already exists'
fi

docker run -d -p 8000:8000 --rm -v "$mounted_dir":/workspace --name django-app 398fc01fe49e
