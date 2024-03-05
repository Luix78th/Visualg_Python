import os


def limpa_tela():
    # Função para limpar a tela do console
    os.system('cls' if os.name == 'nt' else 'clear')


def imprimir_linha(caractere, comprimento):
    # Função para imprimir uma linha com caracteres específicos
    print(caractere * comprimento)


while True:
    imprimir_linha('-', 26)
    print('  Escola Santa Paciência  ')
    imprimir_linha('-', 26)

    try:
        tot = int(input('\nQuantos alunos a turma tem? '))
    except ValueError:
        # Trata exceção se a entrada não for um número inteiro
        print('Favor inserir um valor inteiro válido.')
        continue  # Reinicia o loop

    contagem = 1
    maiorNota = 0
    melhoresAlunos = []

    while contagem <= tot:
        imprimir_linha('-', 26)
        print(f'ALUNO {contagem}')

        try:
            nome = input('Digite o primeiro nome: ')
        except ValueError:
            # Trata exceção se a entrada do nome não contiver apenas letras
            print('Para campo "Nome", digite apenas letras.')
            continue  # Reinicia o loop

        if not nome.isalpha():
            # Verifica se o nome contém apenas letras
            print('Para campo "Nome", digite apenas letras.')
            continue  # Reinicia o loop

        while True:
            try:
                nota = float(input(f"Nota de {nome}: "))
                break  # Sai do loop interno se a entrada da nota for válida
            except ValueError:
                # Trata exceção se a entrada da nota não for um número
                print('Para campo "Nota", apenas valores numéricos.')

        if nota > maiorNota:
            # Atualiza a maior nota e a lista de melhores alunos
            maiorNota = nota
            melhoresAlunos = [nome]
        elif nota == maiorNota:
            # Adiciona o nome à lista de melhores alunos se a nota for igual
            melhoresAlunos.append(nome)

        contagem += 1

    imprimir_linha("-", 26)

    # Utiliza um loop tradicional para criar a lista melhoresAlunos
    melhoresAlunos = [nome for nome in melhoresAlunos if nota == maiorNota]

    if len(melhoresAlunos) > 1:
        # Caso haja mais de um aluno com a melhor nota,
        # usamos a função join() para concatenar os nomes, exceto o último.
        nomes_separados = ', '.join(melhoresAlunos[:-1])
        # Adiciona "e" antes do último nome
        resultado = f'O melhor aproveitamento foi de {nomes_separados} e {melhoresAlunos[-1]} com a nota {maiorNota:.1f}'
    else:
        # Caso haja apenas um aluno com a melhor nota
        resultado = f'O melhor aproveitamento foi de {melhoresAlunos[0]} com a nota {maiorNota:.1f}'

    print(resultado)

    imprimir_linha("-", 26)

    resp = input("Deseja continuar? [S/N] ").upper().strip()
    if resp == "N":
        print("Agradecemos pela consulta :)")
        break
    else:
        limpa_tela()  # Chama a função para limpar a tela
