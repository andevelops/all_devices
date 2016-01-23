$curDir = $MyInvocation.MyCommand.Definition | split-path -parent
$Url = "https://github.com/BurgerZ/jBART/archive/master.zip"
$Path = "$curDir\Dwnld\Burgerz_jBART_upd.zip" 
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($url,$path)
$Url2 = "https://github.com/MIP-repo/I1_jBart_a536_set/archive/master.zip"
$Path2 = "$curDir\Dwnld\I1_jBART_SET_a536_upd.zip" 
$WebClient.DownloadFile($url2,$path2)