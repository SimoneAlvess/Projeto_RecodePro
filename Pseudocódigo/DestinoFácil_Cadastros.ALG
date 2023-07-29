Algoritmo "DestinoFácil_Agência de Viagens (Cadastros)"
// Usando conceitos de programação estruturada (Vetor),
// criar em pseudocódigo um menu para simular um cadastro
// para uma agência de viagens com as seguintes funções:
// cadastro de cliente e cadastro de destino, criar
// também uma consulta para cada estrutura de dados.

Const
   maxcadastro = 40

Var
   i, opcao: inteiro
   busca: logico
   vetnome: vetor [1..maxcadastro] de caractere
   vetdestino: vetor [1..maxcadastro] de caractere

// Procedimento - CADASTRO CLIENTE & DESTINO
procedimento cadastrar_cliente_destino()
inicio
   escreval ("--------------------------------------")
   escreval ("               Cadastro               ")
   escreval ("          Cliente & Destino           ")
   escreval ("--------------------------------------")

   para i de 1 ate maxcadastro faca
      escreva ("Informe o nome: ")
      leia (vetnome[i])
      escreva ("Informe o destino: ")
      leia (vetdestino[i])
   fimpara
   escreval ("")
   escreval (">> Cadastro realizado com sucesso! <<")
   escreval ("")
fimprocedimento

// Procedimento - CONSULTA CLIENTE & DESTINO
procedimento consultar_cliente_destino()
inicio
   escreval ("--------------------------------------")
   escreval ("               Consulta               ")
   escreval ("           Cliente & Destino          ")
   escreval ("--------------------------------------")
   busca <- falso
   para i de 1 ate maxcadastro faca
      se (vetnome[i] <> "") e (vetdestino[i] <> "") entao
         escreval ("Nome: ", vetnome[i])
         escreval ("Destino: ", vetdestino[i])
         busca <- verdadeiro
      fimse
   fimpara
   se busca = falso entao
      escreval ("")
      escreval (">>> Nenhum cadastrado encontrado! <<<")
      escreval ("")
   fimse
fimprocedimento

// MENU INICIAL
Inicio

repita
   escreval ("--------------------------------------")
   escreval ("           Menu DestinoFácil          ")
   escreval ("--------------------------------------")
   escreval (" [1] Cadastrar Cliente & Destino      ")
   escreval (" [2] Consultar Cliente & Destino      ")
   escreval (" [3] Sair do Sistema                  ")
   escreval ("")
   escreva  ("Informe a opção desejada: ")
   leia (opcao)
   escreval("")
   limpatela

   escolha (opcao)
      caso 1
         cadastrar_cliente_destino()
      caso 2
         consultar_cliente_destino()
      caso 3
         escreval ("--------------------------------------")
         escreval ("             DestinoFácil             ")
         escreval ("--------------------------------------")
         escreval ("     Obrigado(a) pela preferência!    ")
         escreval ("")
         escreval (">>>>>>>>> SISTEMA FINALIZADO <<<<<<<<<")
      outrocaso
         se (opcao > 3) ou (opcao < 1) entao
            escreval ("********* OPÇÃO INVÁLIDA! *********")
            escreval ("")
         fimse
   fimescolha
ate opcao = 3

Fimalgoritmo
