algoritmo "Aperfei�oamento do exerc�cio original - Estudo de Caso 2"
var
   tot, cont: Inteiro
   nome, melhoresAlunos, resp: Caractere
   nota, maiorNota: Real
inicio
   Repita
      Escreval("------------------------")
      Escreval(" Escola Santa Paci�ncia ")
      Escreval("------------------------")
      Escreval
      Escreva("Quantos alunos a turma tem? ")
      Leia(tot)
      cont <- 1
      melhoresAlunos <- ""  // Reinicia a vari�vel para cada itera��o
      maiorNota <- 0        // Reinicia a vari�vel para cada itera��o

      Enquanto (cont <= tot) faca
         Escreval
         Escreval("---------------")
         Escreval("ALUNO", cont)
         Escreva("Nome do aluno: ")
         Leia(nome)
         Escreva("Nota de ", nome, ": ")
         Leia(nota)

         Se (nota > maiornota) entao
            maiorNota <- nota
            melhoresAlunos <- nome
         Senao Se (nota = maiornota) entao
            se melhoresAlunos <> "" entao
               // Se j� tem algum nome, adiciona v�rgula e espa�o antes do novo nome
               se cont < tot entao
                  // Se n�o � o �ltimo aluno, adiciona v�rgula e espa�o
                  melhoresAlunos <- melhoresAlunos + ", ";
               Senao
                  // Se � o �ltimo aluno, adiciona a conjun��o "e"
                  melhoresAlunos <- melhoresAlunos + " e ";
               FimSe
            FimSe
            melhoresAlunos <- melhoresAlunos + nome;
         FimSe

         cont <- cont + 1
      FimEnquanto

      Escreval("-------------------")
      Escreval
      Se (melhoresAlunos <> "") entao
         Escreval("Os melhores aproveitamentos foram de ", melhoresAlunos, " com a nota ", maiorNota:3:1)
      Senao
         Escreval("Nenhum aluno inserido.")
      FimSe

      Escreval
      Escreva("Deseja continuar? [S/N] ")
      Leia(resp)
   Ate (resp = "N")

   Se (resp = "N") entao
      Escreval("Obrigado pela consulta")
   FimSe
fimalgoritmo

