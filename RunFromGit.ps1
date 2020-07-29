# Report Meta
(Invoke-WebRequest "https://api.github.com/repos/nauendorf/helloworld").content|ConvertFrom-Json

# Report contents
$files=(Invoke-WebRequest "https://api.github.com/repos/nauendorf/helloworld/contents/").Content|ConvertFrom-Json
$files[0].sha


# Commits
(Invoke-WebRequest "https://api.github.com/repos/nauendorf/helloworld/commits").Content|ConvertFrom-Json

# File contents
$owner='Nauendorf'
$repo='HelloWorld'
$branch='master'
$file='HelloWorld.ps1'
Invoke-Expression $((curl "https://raw.githubusercontent.com/$owner/$repo/$branch/$file").Content)


# Junk
(Invoke-WebRequest "https://api.github.com/repos/nauendorf/helloworld").content|ConvertFrom-Json
(Invoke-WebRequest "https://raw.githubusercontent.com/Nauendorf/HelloWorld/master/HelloWorld.ps1").content
(curl ((curl "https://api.github.com/repos/nauendorf/helloworld/contents").content|ConvertFrom-Json).download_url).content

