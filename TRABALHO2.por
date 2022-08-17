//Desenvolva um algoritmo para gerenciamento de vagas de estacionamento. O estacionamento possui trinta vagas. 
//Deverá ser criado um menu com as seguintes opções:
/*1-Entrada de Veículo
2-Saída de Veículo
3-Listar vagas
4-Sair do programa*/

/*Entrada
Deverá ser digitado o número da vaga, uma crítica deverá ser feita para saber se o número da vaga está de 1 a 30
em caso afirmativo, verifique se esta vaga está liberada para estacionar preenchendo a posição do vetor.*/

/*Saída
Deverá ser digitado o número da vaga, uma crítica deverá ser feita para saber se o número da vaga está de 1 a 30 em 
caso afirmativo verifique se esta vaga está ocupada para liberar a posição do vetor.*/

/*Funções
Deverão ser criadas as seguintes funções:*/
 /*
 entrada e saída de veículos. 
 verificação do número de vaga digitado se está entre 1 e 30.  
 listagem de vagas
 caso seja necessário poderão ser criadas outras funções*/

programa
{
	
	funcao inicio()
	{
		inteiro vagas[30]
		inteiro opcao

		para(inteiro i=0; i < 30; i++){
		vagas[i] = 0
		}
		
		faca{

			escreva("\nDigite a opção desejada: ")
			escreva("\n1-Entrada de Veículo")
			escreva("\n2-Saída de Veículo")
			escreva("\n3-Listar vagas")
			escreva("\n4-Sair do programa\n")

			leia(opcao)
	
			escolha(opcao){
	
				
				caso 1: 
					entrada(vagas)
				pare
				caso 2: 
					saida(vagas)
				pare
				caso 3: 
					listar(vagas)
				pare
				caso 4: 
					escreva("Fim do Programa !")
				pare
				caso contrario: 
					escreva("Opção inválida !\n")
				pare
			}
		}enquanto(opcao!=4)
	}

	funcao entrada(inteiro &vagas[]){
		inteiro numVaga
		escreva("Digite o número da vaga: ")
		leia(numVaga)
			se(numVaga > 0 e numVaga <=30){
				se(vagas[numVaga-1] == 0){
					vagas[numVaga-1] = 1
					escreva("Vaga reservada com sucesso !")
				
				}senao{
					escreva("Vaga ocupada !")
				}
				
			}senao{
				escreva("Esta vaga não existe! ")
			}
	}

	funcao saida(inteiro &vagas[]){
		inteiro numVaga
		escreva("Digite o número da vaga: ")
		leia(numVaga)
			se(numVaga > 0 e numVaga <=30){
				se(vagas[numVaga-1] == 1){
					vagas[numVaga-1] = 0
					escreva("Vaga liberada com sucesso !")
				
				}senao{
					escreva("Vaga vazia !")
				}
				
			}senao{
				escreva("Esta vaga não existe! ")
			}
	}

	funcao listar(inteiro vagas[]){
		para(inteiro i=0; i < 30; i++){
			escreva(vagas[i]," ")
		}
	}

	

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */