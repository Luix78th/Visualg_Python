algoritmo "Resolução do exercício original - Estudo de Caso 1"
var
   tot, cont: Inteiro
   nome, melhorAluno, resp: Caractere
   nota, maiorNota: Real
inicio
Repita
      Escreval("------------------------")
      Escreval(" Escola Santa Paciência ")
      Escreval("------------------------")
      Escreval
      Escreva("Quantos alunos a turma tem? ")
      Leia(tot)
      cont <- 1
      Enquanto (cont <= tot) faca
      Escreval
         Escreval("---------------")
         Escreval("ALUNO ", cont)
         Escreva("Nome do aluno: ")
         Leia(nome)
         Escreva("Nota de ", nome, ": ")
         Leia(nota)
         Se (nota > maiornota) entao
            maiorNota <- nota
            melhorAluno <- nome
         FimSe
         cont <- cont + 1
      FimEnquanto
      Escreval("-------------------")
      Escreval
      Escreval("O melhor aproveitamento foi de ", melhorAluno, " com a nota ", maiorNota:3:1)
      Escreval
Escreva ("Deseja continuar? [S/N] ")
         Leia (resp)
         LimpaTela
         Ate (resp = "N")

    Se (resp = "N") entao
        EscrevaL ("Obrigado pela consulta")
    FimSe
fimalgoritmo
