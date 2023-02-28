programa
{
	
	funcao inicio()
	{
		caracter continuar = 's'

		faca{
			recebeDados()
			escreva("\nDeseja informar novos dados? (S/N) ")
			leia(continuar)
		}enquanto(continuar == 's' ou continuar == 'S')
		
		
		
	}
	funcao recebeDados (){
		cadeia nomeEmpr
		inteiro vlrServico,apMini
		real percDesc,vlrtotal,apManu,totalCdesc,descontado
		
		escreva("Qual o nome da empresa: ")
		leia(nomeEmpr)
		escreva("Qual o valor da manuteção por aparelho? ")
		leia(vlrServico)
		escreva("Número de aparelhos : ")
		leia(apManu)
		escreva("Porcentagem do desconto: ")
		leia(percDesc)
		escreva("Minímo de aparelhos para conseguir desconto: ")
		leia(apMini)
		percDesc = percDesc/100
		vlrtotal = vlrServico * apManu
		se(apMini<apManu){
			descontado = percDesc * vlrtotal
			totalCdesc = vlrtotal - descontado 
			escreva("o serviço de ",nomeEmpr," custará R$ ",totalCdesc)
		}
		senao{
			escreva("o serviço de ",nomeEmpr," custará R$ ",vlrtotal)
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */