programa
{
	
	funcao inicio()
	{
		cadeia nomes[5]
		caracter sexos [5]

	para(inteiro i=0;i<5;i++){
		escreva("\nNome do hóspede: ")
		leia(nomes[i])
		escreva("\nSexo do hóspede: (M/F) ")
		leia(sexos[i])
	}
		limpa()
	
	para(inteiro i=0;i<5;i++){
	se(sexos[i] == 'F' ou sexos[i] == 'f'){
		escreva(nomes[i]," \n")
		}
	}
	para(inteiro i=0;i<5;i++){
	se(sexos[i] == 'm' ou sexos[i] == 'M'){
		escreva(nomes[i]," \n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 439; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */