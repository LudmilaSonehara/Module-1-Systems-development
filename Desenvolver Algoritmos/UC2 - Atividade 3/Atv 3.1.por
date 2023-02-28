programa
{
	
	funcao inicio()
	{
		cadeia quartos[20], situacao 
		inteiro quartoNum, cont=1
		caracter resposta = 'S'
		

		para(inteiro i=0;i<20;i++){
			quartos[i]= "Livre"
		}
		para(inteiro i=0;i<20;i++){
			escreva("Digite o número do quarto: ")
			leia(quartoNum)
			escreva("O quarto está livre ou ocupado? (L/O) ")
			leia(situacao)
			
			se(quartos[quartoNum] == "o" ou quartos[quartoNum] == "O"){
			escreva("\nQuarto está ocupado")
			}
			quartos[quartoNum] = situacao
			escreva("\nDeseja continuar? (S/N) ")
			leia(resposta)
			se(resposta == 'n' ou resposta == 'N'){
				pare
			}
			
		}
		para(inteiro i=0;i<20;i++){
			se(quartos[i] == "o" ou quartos[i] == "O"){
				quartos[i] = "Ocupado"
			}
			escreva(cont, " - " , quartos[i], "\n")
			cont++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 636; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */