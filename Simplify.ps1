# name: simplify.ps1
# author: 普通路人
# encoding: GB2312
# desc: 用于删除windows10操作系统自带的软件，最后保留商店、照片和计算器。
# version: 1.0
$packageNames = "WindowsStore*", "Windows.Photos_*", "WindowsCalculator_*"
Clear-Host | Out-Null
"=" * 64 | Write-Output
"_" * 64 | Write-Output
Write-Output "名称：windows 10 简化脚本"
Write-Output "功能：删除windows10自带软件"
Write-Output "作者：普通路人"
Write-Host "版本：1.0"
"-" * 64 | Write-Host
Write-Output "步骤一、卸载所有自带软件："
#Get-AppxPackage -alluser | Remove-AppxPackage
Write-Output "步骤二、安装软件商店、照片和计算器："
foreach($packageName in $packageNames){
    $package = "C:\Program Files\WindowsApps\Microsoft.{0}_x64__8wekyb3d8bbwe\appxmanifest.xml" -f $packageName
    Add-AppxPackage -register $package  -disabledevelopmentmode
    #Write-Host $package
}
Write-Host "步骤三、卸载完成，建议重启："
"=" * 64 | Write-Host