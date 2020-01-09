echo "=======================================Installing AWS Cli======================================= "


$Access_key_id=" "
$Secret_access_key=" "
$Region="us-west-2"

Invoke-WebRequest -Uri https://s3.amazonaws.com/aws-cli/AWSCLI64PY3.msi -Outfile C:\Users\Administrator\Downloads\AWSCLI64PY3.msi
cd C:\Users\Administrator\Downloads
$msifile="C:\Users\Administrator\Downloads\AWSCLI64PY3.msi"
Start-Process -FilePath "$env:systemroot\system32\msiexec.exe" -ArgumentList "/i `"$msifile`" /qn /norestart" -Wait -WorkingDirectory $pwd
aws configure set aws_access_key_id $Access_key_id
aws configure set aws_secret_access_key $Secret_access_key
aws configure set default.region $Region

echo "=======================================Installation complete======================================= "
echo "To Check Version Run aws --version"

