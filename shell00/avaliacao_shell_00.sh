#!/bin/sh
# Automatiza o processo de avaliacao entre pares
# Deve ser utilizado na raiz da pasta do shell00 a ser avaliada.

# Declaracao de variaveis
blu=$'%s\n\e[1;34m'
grn=$'\e[1;32m'
yel=$'%s\n\e[1;33m'
end=$'%s\n\e[0m%s'

# Inicio
printf "${yel}=============== INÍCIO DA AVALIAÇÃO ===============${end}"
printf "${grn}>> Listar arquivos ${end}"
ls -la

printf "${blu}=============== EX00 ===============${end}"
printf "${grn}>> Listar retorno de 'z'${end}"
cat ex00/z | cat -e

printf "${blu}=============== EX01 ===============${end}"
printf "${grn}>> Descompactar arquivos em 'testShell00'${end}"
tar xf ./ex01/testShell00.tar
printf "${grn}>> Listar arquivo 'testShell00'${end}"
ls -l --full-time | grep -i testShell00
rm testShell00 -f

printf "${blu}=============== EX02 ===============${end}"
printf "${grn}>> Descompactar arquivos em 'exo2.tar'${end}"
tar xf ./ex02/exo2.tar
printf "${grn}>> Listar arquivos de teste${end}"
ls -l --full-time | grep -i test
rm -rf test0 test2
rm test1 test3 test4 test5 test6 -f

printf "${blu}=============== EX03 ===============${end}"
printf "${grn}>> Listar conteúdo de 'midLS'${end}"
cat ./ex03/midLS
echo ""
printf "${grn}>> Executar script 'midLS'${end}"
sh ./ex03/midLS
echo ""

printf "${blu}=============== EX04 ===============${end}"
printf "${grn}>> Listar conteúdo de 'git_commit.sh'${end}"
cat ./ex04/git_commit.sh
echo ""
printf "${grn}>> Executar script 'git_commit.sh'${end}"
sh ./ex04/git_commit.sh
echo ""

printf "${blu}=============== EX05 ===============${end}"
printf "${grn}>> Listar conteúdo de 'git_ignore.sh'${end}"
cat ./ex05/git_ignore.sh
printf "${grn}>>Criar 'a.txt' e acrescentar no arquivo '.gitignore'${end}"
touch ./ex05/a.txt
echo "a.txt" > ./ex05/.gitignore
printf "${grn}>> Executar script 'git_ignore'${end}"
sh ./ex05/git_ignore.sh
rm ./ex05/a.txt ./ex05/.gitignore -f

printf "${blu}=============== EX06 ===============${end}"
printf "${grn}>> Listar conteúdo do arquivo 'b'${end}"
cat ./ex06/b | cat -e
echo ""

printf "${blu}=============== EX07 ===============${end}"
printf "${grn}>> Listar conteúdo de 'clean'${end}"
cat ./ex07/clean
printf "${grn}>> Criar arquivos de teste 'a~' '#a#' '#a'e 'a#'${end}"
touch ./ex07/"a~" ./ex07/"#a#" ./ex07/"#a" ./ex07/"a#"
printf "${grn}>> Executar script 'clean'${end}"
sh ./ex07/clean
printf "${grn}>> Listar arquivos remanescentes${end}"
ls -l ./ex07
rm ./ex07/"#a" ./ex07/"a#" -f

printf "${blu}=============== EX08 ===============${end}"
printf "${grn}>> Listar conteúdo de 'ft_magic'${end}"
cat ./ex08/ft_magic
printf "${grn}>> Criar arquivo de testes 'test_magic'${end}"
echo "asuihfuiashfasduihasfidhfuisdhfidhfuiajsd42" > ./ex08/test_magic
printf "${grn}>> Testar arquivo 'ft_magic' com 'test_magic'${end}"
file -m ./ex08/ft_magic ./ex08/test_magic
rm -f ./ex08/test_magic
printf "${yel}=============== FINAL DA AVALIAÇÃO ===============${end}"
