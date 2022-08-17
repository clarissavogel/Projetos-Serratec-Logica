programa
{
	
	funcao inicio()
	{
		inteiro assentos[10][12], linha, coluna 
			para(inteiro i=0; i < 10; i++){ //linha
				para(inteiro j=0; j < 12; j++){ //coluna

				assentos[i][j] = 0
				escreva(assentos[i][j],"  ")
				}
			escreva("\n")
			}
		
		faca{
			escreva("Digite a linha: ")
			leia(linha)
			escreva("Digite a coluna: ")
			leia(coluna)

			se(linha >= 10 ou coluna >= 12){
				escreva("Não existe este assento!\n")
			}
			senao {
				se(linha<0 ou coluna<0){
					para(inteiro i=0; i < 10; i++){ //linha
						para(inteiro j=0; j < 12; j++){ //coluna

							escreva(assentos[i][j],"  ")
							}
					escreva("\n")
					}
					retorne	
				}
				se(assentos[linha][coluna]==0){
					assentos[linha][coluna] = 1
				}
				senao{
					escreva("Assento já está reservado!\n")
				}
			}
		}enquanto(linha >= 0 ou coluna >= 0)
		
	}		
}
  
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 646; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {assentos, 6, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
