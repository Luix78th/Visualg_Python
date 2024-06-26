# **Projeto de Transição: Visualg para Python**

Este repositório contém a migração de estudos de casos em lógica de programação simples, originalmente implementado em Visualg e adaptado para uma solução mais robusta em Python. O projeto inclui três estudos de caso progressivos, demonstrando melhorias na lógica de processamento, validação de entrada e interface com o usuário. Cada estudo de caso tem suas diferenças detalhadas, fornecendo uma comparação clara entre a abordagem original em Visualg e a solução final em Python.

O exercício inicial em Visualg pode ser encontrado no ["Curso de Lógica de Programação - Professor Gustavo Guanabara"](https://www.youtube.com/watch?v=8mei6uVttho).

A seguir, é apresentada a evolução dos três estudos progressivos:

## Estudo de Caso 1 - Visualg

O primeiro estudo de caso em Visualg apresenta um algoritmo para determinar o aluno com o melhor aproveitamento em uma turma. No entanto, há uma limitação quando dois ou mais alunos têm a mesma nota, resultando apenas no primeiro nome sendo exibido como melhor aluno. Em tempo: Foram usados apenas 2(dois) alunos para simplificação do exemplo, conforme abaixo:

[Arquivo: Caso 1](https://github.com/Luix78th/Visualg_Python/blob/main/EstudoCaso1.alg)


**[Exemplo de Saída do Estudo de Caso 1]**

> Quantos alunos a turma tem?  
(Valor digitado pelo usuário) = 2

> ALUNO 1  
Nome do aluno: Aluno 1  
Nota: 9 
>
> ALUNO 2  
Nome do aluno: Aluno 2  
Nota: 9

- [ ] Resultado: "O melhor aproveitamento foi de **Aluno 1** com a nota 9.0"

## Estudo de Caso 2 - Visualg

No segundo estudo de caso em Visualg, foi aprimorado o código, para incluir todos os alunos que alcançaram a mesma nota máxima, proporcionando uma solução mais abrangente. Conseguimos resolver o problema dos nomes; mesmo dois alunos (ou mais) tendo a mesma nota, seus respectivos nomes serão incluídos no resultado final, como no exemplo abaixo:

[Arquivo: Caso 2](https://github.com/Luix78th/Visualg_Python/blob/main/EstudoCaso2.alg)

**[Exemplo de Saída do Estudo de Caso 2]**

> Quantos alunos a turma tem?  
(Valor digitado pelo usuário) = 2

> ALUNO 1  
Nome do aluno: Aluno 1  
Nota: 9  
>
> ALUNO 2  
Nome do aluno: Aluno 2  
Nota: 9

- [x] Resultado: "O melhor aproveitamento foi de **Aluno 1 e Aluno 2**, com a nota 9.0"

## Estudo de Caso 3 - Python
No terceiro estudo de caso, conforme o código escrito e adaptado em Python, notamos uma notável melhoria em todo o contexto.

[Arquivo: Caso 3](https://github.com/Luix78th/Visualg_Python/blob/main/Best_Scores.py)

Além de acompanharmos a lógica correta em que mostramos os nomes dos alunos que tiveram a mesma nota, foi adicionada algumas funções e regras; o campo "nome" ser aceito apenas letras e no campo "nota" ser aceito apenas números.

A opção oferecida ao usuário "Deseja continuar? (realizar outra consulta)." nos deixa uma boa ideia para também ser implementado um arquivo executável, onde mais funcionalidades podem ser adicionadas e ser usadas em instituições de ensino.

Esta versão do código é programada para limpar a tela, caso o usuário deseje realizar nova consulta.

Foi utilizada a função join() do Python, que permite concatenar os elementos de uma lista em uma única string, utilizando um separador definido. Neste caso, os nomes dos alunos foram separados por vírgulas e o último nome seja precedido por "e". Para isso, verificamos o tamanho da lista melhoresAlunos e, dependendo do número de elementos, formatamos a saída de acordo.

Exemplo:
> Quantos alunos a turma tem?  
(Valor digitado pelo usuário) = 3

> ALUNO 1  
Nome do aluno: Aluno 1  
Nota: 9  
>
> ALUNO 2  
Nome do aluno: Aluno 2  
Nota: 9
>
> ALUNO 3  
Nome do aluno: Aluno 3  
Nota: 9  

- [x] Resultado: "O melhor aproveitamento foi de **Aluno 1, Aluno 2 e Aluno 3**, com a nota 9.0"


## Contribuições

Sinta-se à vontade para contribuir através de pull requests. Novas implementações em outras linguagens também são bem-vindas!

Um grande abraço! 
