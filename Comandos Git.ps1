# Identificacao
$nome = Read-Host "Informe o seu nome"
git config --local user.name "$nome"
$email = Read-Host "Informe o seu email"
git config --local user.email "$email"

# Criacao de uma nova pasta
$nomePasta = "ExemploGit"
mkdir $nomePasta
$caminhoPasta = (Get-Location).Path
$caminhoPasta += "\$nomePasta"
cd $nomePasta
git init --bare
$pastaAntiga = Read-Host "Informe o caminho antigo do projeto"
cd $pastaAntiga
git remote add local $caminhoPasta
git push local master