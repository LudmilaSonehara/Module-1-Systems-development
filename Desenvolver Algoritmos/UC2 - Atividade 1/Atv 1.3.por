programa
{
	
	funcao inicio()
	{

	inteiro auditorioalpha, auditoriobeta, cadeirasadi, convidados
	
	auditorioalpha = 150
	auditoriobeta = 350

	escreva("Insira o número de convidados: ")
	leia(convidados)
	cadeirasadi = convidados - 150
	se(convidados <0 ou convidados >350){
		escreva("Número de convidados inválido")
	}

	se(convidados >0 e convidados <=150){
		escreva("Use o auditório Alfa")
	}
	se(convidados >220 e convidados <=350){
		escreva("Use o auditório Beta")

	}
	
	se(convidados >150 e convidados <=220){
		escreva("\nUse o auditório Alfa e inclua mais ", cadeirasadi, " cadeira(s)")
	}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 575; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */