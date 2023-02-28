programa
{
	
	funcao inicio()
	{

	inteiro pessoas
	real cafe
	real agua
	inteiro salgadinho

	escreva ("Quantos convidados virão ao evento? ")
	leia(pessoas)
	
	cafe = pessoas*0.2 
	agua = pessoas*0.5 
	salgadinho = pessoas*7 
	
	se (pessoas > 350)
	escreva ("\nQuantidade de convidados superior à capacidade máxima.\n")
	 
	senao
	escreva("\nTotal do menu: ", cafe, " litros de café, ", agua, " litros de água e ", salgadinho, " de salgadinhos.\n")
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 457; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */