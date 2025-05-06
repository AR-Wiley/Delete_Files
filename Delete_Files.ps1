$date = (Get-Date).AddDays(-365)

$folder_path = "C:\Users\wiley\Desktop\GlobexFiles"

$dated_files = Get-ChildItem -Path $folder_path -File | Where-Object {$_.LastWriteTime -le $date}

for ($i = 0; $i -lt $dated_files.Length; $i++){
    Remove-Item ($dated_files[$i])
}

