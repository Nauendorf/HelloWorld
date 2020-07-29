$res=Invoke-WebRequest "https://api.github.com/repos/nauendorf/helloworld/contents"
$res.Content|ConvertFrom-Json

(Invoke-WebRequest "https://raw.githubusercontent.com/Nauendorf/HelloWorld/master/HellowWorld.ps1").content


(curl ((curl "https://api.github.com/repos/nauendorf/helloworld/contents").content|ConvertFrom-Json).download_url).content


$owner='Nauendorf'
$repo='HelloWorld'
$branch='master'
$file='HelloWorld.ps1'
Invoke-Expression $((curl "https://raw.githubusercontent.com/$owner/$repo/$branch/$file").Content)
&{$((curl "https://raw.githubusercontent.com/$owner/$repo/$branch/$file").Content)}

