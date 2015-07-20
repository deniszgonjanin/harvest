for name in ckanext-* ckan datapusher; do
    pushd $name > /dev/null
    if [ -d .git ]; then
        remote=$(git remote show origin | grep Fetch | sed "s/\s*Fetch URL: //g" | xargs echo)
        branch=$(git symbolic-ref --short HEAD)
        echo "$name $remote $branch"
    fi
    popd > /dev/null
done
