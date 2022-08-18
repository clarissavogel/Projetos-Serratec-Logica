
programa
{
	 
	funcao inicio()
	{
        	inteiro quartos[20]
        	cadeia matriz[2][3]
		inteiro opcao
		logico continuar = verdadeiro

			
		enquanto(continuar){
			escreva("Hospital GRUPO 5\n")
			escreva("Escolha uma opção\n")
			escreva("1. Registrar entrada\t3. Listar registros\t 5. Consulta Ambulatorial\n2. Registrar Saída\t4. Faturamento\t\t 6. Fechar\n")
			leia(opcao)
			limpa()
			escolha(opcao){
				caso 1: 
				registrarEntrada(quartos)
				espere()
				pare
				caso 2:
				registrarSaida(quartos)
				espere()
				pare
				caso 3:
				listarQuartos(quartos)
				espere()
				pare
				caso 4:
				faturamento(quartos, matriz)
				espere()
				pare
				caso 5:
				consulta(matriz)
				espere()
				pare
				caso 6:
				continuar = falso
				pare
				caso contrario:
				escreva("Digite uma opção válida\n")
			}
			
			limpa()
		}	
	}




//Funções

	funcao espere(){
		cadeia _
		escreva("\n\nPressione enter para continuar...")
		leia(_)
	}



	funcao logico quartoOcupado(inteiro num, inteiro quartos[]){
		se(quartos[num-1] == 1){
			retorne verdadeiro
		}senao{
			retorne falso
		}
	}


	funcao registrarEntrada(inteiro &quartos[]){
		inteiro num
		escreva("Digite o número do quarto para a qual você deseja registrar uma entrada.\n")
		leia(num)
		se(num >= 1 e num <= 20){
			
			se(quartoOcupado(num, quartos)){
				escreva("Há um paciente neste quarto.")
			}
			senao{
				quartos[num-1] = 1
				escreva("Sucesso.")
		}
		}senao{
			escreva("Não existe esse quarto.")}
	}


	funcao registrarSaida(inteiro &quartos[]){
		inteiro num
		escreva("Digite o número do quarto para a qual você deseja registrar uma saída.\n")
		leia(num)
		se(quartoOcupado(num, quartos)){
			quartos[num-1] = 0
			escreva("Sucesso!!.")
		}senao{
			escreva("Não há nenhum paciente nesta quarto...")
		}
	}


	funcao listarQuartos(inteiro quartos[]){
		escreva("Os quartos serão listados abaixo. (X) indica área ocupada, enquanto números indicam quartos disponíveis.\n\n")
		escreva(" \n")
		para(inteiro i = 1; i<=20; i++){
			se(quartoOcupado(i, quartos)){
				escreva("|X")
			}senao{
				se(i<10){
					escreva("|0"+i)
				}senao{
					escreva("|"+i)
				}
			}
		}
		escreva("|\n  ")
	}



	funcao consulta(cadeia &matriz[][]){
				para(inteiro i=0; i<2; i++){
					para(inteiro j=0; j<3; j++){
                        se(j == 0){
                            escreva("\n Digite o nome do paciente:")
                        }
                        se(j == 1){
                            escreva("\n Digite o telefone do paciente:")
                        }
                        se(j == 2){
                            escreva("\n Digite o tipo de consulta:")
                        }
                        
						leia(matriz[i][j])	
	
						}
		
					}
			}

		
	funcao faturamento(inteiro quartos[], cadeia matriz[][]){
				real valorInternacao =0.00, valorConsulta = 0.00
				inteiro quantInternacao = 0, quantConsulta = 0
				para(inteiro i=0; i<20; i++){
					se(quartos[i]!=0){
						valorInternacao=valorInternacao+500.00
						quantInternacao ++
					}
				}
				para(inteiro i=0; i < 2; i++){
					se(matriz[i][2] == "Pediatria"){
						valorConsulta=valorConsulta+150.00
						quantConsulta ++
					}senao{
						valorConsulta=valorConsulta+120.00
						quantConsulta ++
					}
				}
				escreva("Quantidade total de consultas = ", quantConsulta)
				escreva("\nFaturamento das consultas = R$", valorConsulta)
				escreva("\nQuantidade total de internações = ", quantInternacao)
				escreva("\nFaturamento das internações = R$", valorInternacao)
				escreva("\nFaturameto total = R$",valorConsulta + valorInternacao,"\n")
			}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2875; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */