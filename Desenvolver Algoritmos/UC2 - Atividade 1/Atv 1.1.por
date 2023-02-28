programa
{
	

	funcao inicio()
	{
		real Garcons
		real HorasTrabalhadas
		real Horas
		real total
		
		Horas = 1*10.50

		escreva("          CALCULATOR EASY\n")
		escreva("\nDigite total de horas trabalhadas: ")
		leia (HorasTrabalhadas)

		escreva("\nDigite o total de garçons: ")
		leia(Garcons)
		
		total = HorasTrabalhadas*Horas*Garcons
		escreva("\nCusto Total: R$ ", total, "\n")

		escreva("\nDúvidas??? Entre em contato conosco!\n")
		
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 453; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */