programa
{
	
	funcao inicio()
	{
		inteiro opcao = 0,cont=-1
		cadeia nomes[15],pesquisa,hospede = ""
	
		faca
		{
			
			escreva("\nOlá! Digite: 1-Cadastrar; 2-pesquisar; 3-Sair\n")
			leia(opcao)

			
			se(opcao == 1)
			{
				enquanto(opcao == 1)
				{
					para(inteiro i=0;i<15;i++){
					escreva("\nInsira o nome do hóspede: ")
					leia(hospede)
					nomes[i] = hospede
			      	cont++
			      	escreva("\nDigite: 1-Cadastrar; 2-pesquisar; 3-Sair\n")
			      	leia(opcao)
			      	se(opcao ==2)
			      	{
			      		pare
			      	}
			      	senao se(opcao == 3){
			      		pare
			      	}
			      	se(nomes[i] == nomes[14])
			      	{
			      		escreva("\nMáximo de cadastros atingido")
			      		pare
			      	}
				}
				
				}
			}
			se(opcao == 2)
			{
					
					enquanto(opcao ==2)
					{
				
					escreva("\nQual nome deseja pesquisar?: ")
					leia(pesquisa)
						
						se(pesquisa == hospede)
						{
							escreva("\nHóspede ",hospede," foi encontrado no indice ",cont)
						}
			
					escreva("\nDigite: 1-Cadastrar; 2-pesquisar; 3-Sair \n")
			     	leia(opcao)
			     	
			     	se(opcao == 1)
			     	{
			     		pare
			     	}
			     	senao se(opcao == 3)
			     	{
			     		pare
			     	}
				}
				
			}

			
		}enquanto(opcao != 3)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */