algoritmo "Aperfeiçoamento do exercício original - Estudo de Caso 2"
var
   tot, cont: Inteiro
   nome, melhoresAlunos, resp: Caractere
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
      melhoresAlunos <- ""  // Reinicia a variável para cada iteração
      maiorNota <- 0        // Reinicia a variável para cada iteração

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
               // Se já tem algum nome, adiciona vírgula e espaço antes do novo nome
               se cont < tot entao
                  // Se não é o último aluno, adiciona vírgula e espaço
                  melhoresAlunos <- melhoresAlunos + ", ";
               Senao
                  // Se é o último aluno, adiciona a conjunção "e"
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

