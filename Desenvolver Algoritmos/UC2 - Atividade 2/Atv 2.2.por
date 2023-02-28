programa
{
	funcao inicio ()
	{
		
		inteiro qHospedes, quarto,count=0
		real valDiaria, ValTotal=0
		
		escreva("Informe Quantos Hospedes:")
		leia(qHospedes)
		
		enquanto(count<qHospedes)
		{
			count ++
			escreva("\n\nInforme o quarto:")
			leia(quarto)
			escreva("\ninforme o valor da diaria:")
			leia(valDiaria)
			escreva("\nQuarto: ",quarto,", R$",valDiaria, "\n")
			ValTotal = ValTotal+valDiaria
		}
		
		escreva("\nTotal de diarias: R$",ValTotal,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 470; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */