programa
{
	funcao inicio ()
	{
		
		
	cadeia nome = ""
	inteiro idade,gratuidade =0,meia =0
	real valDia, ValTotal=0
		
	escreva("Qual o valor da diaria? " )
	leia(valDia)
		
	enquanto(nome != "pare")
	{
		escreva("\n\nQual o nome do hospede? " )
		leia(nome)
		se(nome != "pare"){
			escreva("\nQual a idade desse hospede? " )
			leia(idade)
			se(idade < 4)
			{
				escreva(nome," possui gratuidade.")
				gratuidade +=1
			}
			senao
			{
				se(idade>80)
				{
					escreva(nome," paga meia.")
					ValTotal = ValTotal + valDia
					meia+=1
				}
				senao{
					escreva(nome," paga integral.")
					ValTotal = ValTotal + valDia/2
				}
			}
		}
	}
		
		escreva("\nTotal de hospedagens:",ValTotal," ,Total de gratuidades ",gratuidade,", Total de meias: ",meia," \n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 743; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */