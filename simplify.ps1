# name: simplify.ps1
# author: ��ͨ·��
# encoding: GB2312
# desc: ����ɾ��windows10����ϵͳ�Դ��������������̵ꡢ��Ƭ�ͼ�������
# version: 1.0
$packageNames = "WindowsStore*", "Windows.Photos_*", "WindowsCalculator_*"
Clear-Host | Out-Null
"=" * 64 | Write-Output
"_" * 64 | Write-Output
Write-Output "���ƣ�windows 10 �򻯽ű�"
Write-Output "���ܣ�ɾ��windows10�Դ����"
Write-Output "���ߣ���ͨ·��"
Write-Host "�汾��1.0"
"-" * 64 | Write-Host
Write-Output "����һ��ж�������Դ������"
#Get-AppxPackage -alluser | Remove-AppxPackage
Write-Output "���������װ����̵ꡢ��Ƭ�ͼ�������"
foreach($packageName in $packageNames){
    $package = "C:\Program Files\WindowsApps\Microsoft.{0}_x64__8wekyb3d8bbwe\appxmanifest.xml" -f $packageName
    Add-AppxPackage -register $package  -disabledevelopmentmode
    #Write-Host $package
}
Write-Host "��������ж����ɣ�����������"
"=" * 64 | Write-Host