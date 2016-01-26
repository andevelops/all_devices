$curDir = $MyInvocation.MyCommand.Definition | split-path -parent
$Url = "https://github.com/BurgerZ/jBART/archive/master.zip"
$Path = "$curDir\Dwnld\Burgerz_jBART_upd.zip" 
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($url,$path)
$Url2 = "https://github.com/I1PABIJJA/I1_jBart_evo_energy_1_set/archive/master.zip"
$Path2 = "$curDir\Dwnld\I1_jBART_SET_evo_energy_1_upd.zip" 
$WebClient.DownloadFile($url2,$path2)