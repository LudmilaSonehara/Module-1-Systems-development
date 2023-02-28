programa{
    
    inclua biblioteca Texto --> tx
    funcao inicio() {
	   
	    caracter opcional
		logico   resultancia = falso
		inteiro computar = 0 , indiceCadastro = 0, posicao
	    cadeia  nomes [15],pesquisaHospede 
	
        		faca{
		            
		            escreva("Digite 1- cadastrar; 2- pesquisar; 3- sair \n ")
		            leia(opcional)
		            
		            enquanto(opcional == '1' ou opcional == '2'){
		                
		                enquanto(opcional == '1'){
		                    
	                    se ( computar < 15){
	                       escreva("informe o nome do hospede: \n")
	                        leia(nomes[computar])
	                        computar++
	                    }senao{
	                        escreva("super lotado. \n")
	                    }
	                    
	                    escreva("digite 1- cadastrar; 2- pesquisar; 3-sair \n")
	                    leia(opcional)
	                     
		            }
		             
		              enquanto(opcional == '2'){
		                  
		                  escreva("Informe o nome do hóspede que deseja pesquisar: \n")
		                   leia(pesquisaHospede)
		              
		               enquanto(indiceCadastro < computar e resultancia == falso){
		                   
		               posicao =  tx.posicao_texto(pesquisaHospede, nomes[indiceCadastro], 0)
                        
                        se(posicao >= 0){
                            resultancia = verdadeiro
                            escreva("A palavra ", pesquisaHospede, " foi encontrada na posiçao ", posicao, " no nome ", nomes[indiceCadastro], " no indice ", indiceCadastro + 1, "\n")
                        }senao{
                            se(indiceCadastro == computar - 1 e posicao < 0){
                                escreva("Nome não encontrado.\n")
                            }
                         
                        }
                        
                         indiceCadastro++
                        
		            }
		            
		            posicao = -1
		            indiceCadastro = 0
		            resultancia = falso
		            
		            escreva("Digite 1- cadastrar; 2- pesquisar; 3- sair\n")
        		    leia(opcional)
		            
		        }
		        
		    }
		    
		}enquanto(opcional == '1' ou opcional == '2')
		
}
   
}		               
        		
        		
        		
        		
        		
        		
        		
	    