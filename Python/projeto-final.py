#Lançamento de Notas
#Crie uma estrutura que permita o lançamento de notas para vários alunos
#Cada aluno terá 3 notas
#Nenhuma nota poderá receber nota inferior a 0(zero)
#Nenhuma nota poderá receber nota superior a 10(Dez)
#Somatório das três notas e divida por 3


aprovados = 0
exame = 0
reprovados = 0
totCad = 0
mediaSexo = [0,0,0,0,0,0,]

# Iniciando o Cadastro
cadastro = input("Deseja iniciar o lançamento das notas ? (S/N): ").upper()
while (cadastro != "S" and cadastro!= "N"):
    print("Opção inválida, por favor digitar S - para SIM e N - para NÃO")
    cadastro = input("Deseja inicar o cadastro de notas ? (S/N): ").upper()

# Nome do aluno
while cadastro.upper() == "S":
    totCad += 1
    nomeDoAluno = input("Nome do Aluno: ")

    # Sexo
    sexo = input("Informe o Sexo (F/M): ").upper()
    while (sexo != "F" and sexo != "M"):
        print("Opção Inválida, informe F - Feminino ou M - Masculino:")
        sexo = input("Informe o Sexo (F/M): ").upper()

    # Lançamento das Notas
    for cont in range(1,4):
        if cont == 1:
            nota1 = float(input("Informe a Primeira Nota: "))
            while nota1 < 0 or nota1 > 10:
                print("Nota inválida, o valor deve ser entre 0 e 10")
                nota1 = float(input("Informe a Primeira Nota: "))
        elif cont == 2:
            nota2 = float(input("Informe a Segunda Nota: "))
            while nota2 < 0 or nota2 > 10:
                print("Nota inválida, o valor deve ser entre 0 e 10")
                nota2 = float(input("Informe a Segunda Nota: "))
        else:
            nota3 = float(input("Informe a Terceira Nota: "))
            while nota3 < 0 or nota3 > 10:
                print("Nota inválida, o valor deve ser entre 0 e 10")
                nota3 = float(input("Informe a Terceira Nota: "))
    
    # Média por Sexo
    media = (nota1+nota2+nota3)/3
    print("A média do(a) " + nomeDoAluno + " foi de: " + format(media, ".1f"))
    if media >= 7:
        if sexo.upper() == 'F':
            mediaSexo[0] += 1
        else:
            mediaSexo[1] += 1
        aprovados += 1
    elif media>=4 and media<7:
        if sexo.upper() == 'F':
            mediaSexo[2] += 1
        else:
            mediaSexo[3] += 1
        exame += 1
    else:
        if sexo.upper() == 'F' and media<3:
            mediaSexo[4] += 1
        else:
            mediaSexo[5] += 1
        reprovados += 1
    
    # Estrutura de Repetição
    print("\n")
    cadastro = input("Deseja iniciar o cadastro de notas ? (S/N): ").upper()
    while (cadastro != "S" and cadastro!= "N"):
        print ("Opção inválida, por favor digitar S - para SIM e N - para NÃO")
        cadastro = input("Deseja inicar o cadastro de notas ? (S/N): ").upper()
else:
    print("LANÇAMENTO DAS NOTAS FINALIZADOS".center(50,"*"))
    print("\n")

print("RESULTADO".center(50, "*"))
print("\n")

print("Total de Alunos Cadastrados:", totCad)
print("\n")

print("PORCENTAGEM".center(50,"*"))
print("Alunos Aprovados: {0:.0f}".format((aprovados*100)/totCad), "%")
print("Alunos de Exame: {0:.0f}".format((exame*100)/totCad), "%")
print("Alunos Reprovados: {0:.0f}".format((reprovados*100)/totCad), "%")
print("\n")

print("VALORES ABSOLUTOS".center(50,"*"))

print("Total de Alunos Aprovados do Sexo Feminino:",(mediaSexo[0]))
print("Total de Alunos Aprovados do Sexo Masculino:",(mediaSexo[1]))
print("Total de Alunos de Exame do Sexo Feminino:",(mediaSexo[2]))
print("Total de Alunos de Exame do Sexo Masculino:",(mediaSexo[3]))
print("Total de Alunos Reprovados do Sexo Feminino:",(mediaSexo[4]))
print("Total de Alunos Reprovados do Sexo Masculino:",(mediaSexo[5]))