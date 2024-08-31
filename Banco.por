programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real saldo= 0 
    real saque, deposito
    cadeia controle
    real investimento, rendimento
    inteiro menu = -1
    cadeia extrato, senha="lap1sx1"
    cadeia pswd
    inteiro meses
    
    enquanto(menu!=0){
      escreva("Digite sua senha: ")
      leia(pswd)
      se(pswd == senha){
        escreva("|----------MENU----------|\n")
        escreva("| 1-SALDO  R$", saldo, "           |\n")
        escreva("| 2-SAQUE                |\n")
        escreva("| 3-DEPOSITO             |\n")
        escreva("| 4-EXTRATO              |\n")
        escreva("| 5-INVESTIMENTO         |\n")
        escreva("| 0-SAIR                 |\n")
        escreva("|------------------------|\n")
        escreva("| ESCOLHA -> ")
        leia(menu)
      }
      senao{
        escreva("Senha incorreta, tente novamente!\n")
      }
    
      escolha(menu){
        caso 1:
          escreva("saldo: ", saldo)
          pare

        caso 2:
          escreva("Digite sua senha: ")
          leia(pswd)
          se(pswd == senha){
            escreva("Digite o valor para sacar: ")
            leia(saque)
            
            enquanto(saque < 0){
              escreva("Valor inválido, digite novamente: ")
              leia(saque)
            }
            se(saque > saldo){
              escreva("Saque não autorizado\n")
            }
            senao{
              saldo = saldo - saque
              extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
              escreva("Saque realizado com sucesso\n")
              escreva("Aperte ENTER para continuar")
              leia(controle)
              limpa()
            }
          }
          senao{
            escreva("Senha incorreta\n")
          }
          pare

        caso 3:
          escreva("Digite sua senha: ")
          leia(pswd)
          se(pswd == senha){
            escreva("Digite o valor: ")
            leia(deposito)
            
            enquanto(deposito < 0){
              escreva("Valor inválido, digite novamente: ")
              leia(deposito)
            }
            saldo = saldo + deposito
            extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
            escreva("Deposito realizado com sucesso\n")
            escreva("Aperte ENTER para continuar")
            leia(controle)
            limpa()
          }
          senao{
            escreva("Senha incorreta\n")
          }
          pare

        caso 4:
          escreva("Digite sua senha: ")
          leia(pswd)
          se(pswd == senha){
            escreva(extrato)
            escreva("Aperte ENTER para continuar")
            leia(controle)
            limpa()
          }
          senao{
            escreva("Senha inválida\n")
          }
          pare

        caso 5:
          escreva("Digite o valor que deseja investir: ")
          leia(investimento)
          se(investimento > saldo){
            escreva("Saldo insuficiente!\n")
          }
          senao{
            escreva("Digite a quantidade de meses que deseja investir: ")
            leia(meses)
            saldo = saldo - investimento
            para(inteiro contador = 0; contador < meses; contador++){
              rendimento = investimento * 1.02
              investimento = rendimento
            }
            saldo = saldo + investimento
            extrato = extrato + "INVESTIMENTO ------------ R$" + investimento + "\n"
            escreva("O rendimento final foi de: R$ ", investimento, "\n")
          }
          pare
      }
    }
  }
}
