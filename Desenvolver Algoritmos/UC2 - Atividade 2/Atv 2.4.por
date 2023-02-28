programa
{
	
	funcao inicio()
	{
		real diaria, meiav = 0.0, valort, inteirav
		cadeia nome, nomeMaior = "", nomeMenor = "", resposta
		inteiro idade, gratuidade = 0, inteira = 0, meia = 0, maiorIdade = 0, menorIdade = 100, idade3 = 0

		escreva ("Qual o valor padrão da diária?\n")
		leia (diaria)

		faca
		{
			escreva ("Escreva o nome do hóspede.\n")
			leia (nome)

			escreva ("Qual a idade deste hóspede?\n")
			leia (idade)

			limpa()

			se (idade > 4 e idade < 80)
			{
			inteira++
			escreva (nome, " paga inteira\n")
			}
			senao se (idade < 4)
			{
			gratuidade++
			escreva (nome, " possui gratuidade.\n")
			}
			senao 
			{ 
			meia++
			escreva (nome, " paga meia.\n")
			}
			se (idade > maiorIdade)
			{
			maiorIdade = idade	
			nomeMaior = nome	
			}
			se (idade < menorIdade)
			{
		     menorIdade = idade
		     nomeMenor = nome 
			}
			
			escreva ("\nDeseja cadastrar mais alguem? (S/N) \n")
			leia (resposta)
			limpa()
		} enquanto (resposta == "S" ou resposta == "s" )
		
		inteirav = inteira * diaria
		meiav = meia * diaria /2
		valort = meiav + inteirav
		
		escreva ("\nTotal de hospedagens: R$ ",valort, "; ",gratuidade, " gratuidade(s) e ",meia, " meia(s).\n")
		escreva ("\nO hóspede mais velho é ", nomeMaior," com ",maiorIdade, " ano(s)\n")
		escreva ("\nO hóspede mais jovem é ", nomeMenor," com ",menorIdade, " ano(s)\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1095; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */