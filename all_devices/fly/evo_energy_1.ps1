$curDir = $MyInvocation.MyCommand.Definition | split-path -parent
$Url = "https://github.com/BurgerZ/jBART/archive/master.zip"
$Path = "$curDir\Dwnld\Burgerz_jBART_upd.zip" 
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($url,$path)

$curDir = $MyInvocation.MyCommand.Definition | split-path -parent
$Url = "https://github.com/I1PABIJJA/I1_jBart_EE1_set/archive/master.zip"
$Path = "$curDir\Dwnld\I1_jBART_SET_EE1_upd.zip" 
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($url,$path)