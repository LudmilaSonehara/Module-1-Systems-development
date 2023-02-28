programa
{
	
	funcao inicio()
	{
		inteiro diarias, valor = 90
		cadeia nome 

	escreva ("Olá, Estamos aqui para te ajudar a reservar as diárias para sua estadia em nosso hotel! \n")
	escreva ("\nPrimeramente, informe seu nome: ")
	leia(nome)
	
	escreva ("\nOlá, ",nome, "! Por favor, nos informe quantos dias deseja se hospedar: ")
	leia(diarias)

	enquanto (diarias <=0 ou diarias >= 30)
	{
		escreva("\nValor inválido. Por favor, forneça o tempo de estadia desejado: ")
		leia(diarias)
	}
		escreva ("\nPor favor, insira aqui o valor que será de entrada para o pagamento de sua estadia: R$")
		leia(valor)

	enquanto (valor <=0)
	{
		escreva ("\nQuantia inválida. Por favor, insira o valor que será depositado de entrada para o pagamento de sua estadia: R$")
		leia(valor)
	}
	escreva ("\nAgradecemos pela sua preferência!\n")
	escreva ("\nFim do programa\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 867; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */