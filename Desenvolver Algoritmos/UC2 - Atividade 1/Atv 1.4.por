programa
{
	
	funcao inicio()
	{
		cadeia empresa
		cadeia diasemana
		inteiro horasemana
		escreva("Qual o nome da sua empresa? ")
		leia(empresa)
		escreva("Qual o dia da semana fazer a reserva? ")
		leia(diasemana)
		escreva("Para qual horário deseja fazer a reserva? ")
		leia(horasemana)

		se(diasemana == "segunda" e horasemana >=7 e horasemana <=23){
			escreva("Reservado para ", empresa, " no(a) ", diasemana, " às ", horasemana, " horas")
		
		se(diasemana == "terca" e horasemana >=7 e horasemana <=23)
			escreva("Reservado para ", empresa, " no(a) ", diasemana, " às ", horasemana, " horas")

		se(diasemana == "quarta" e horasemana >=7 e horasemana <=23)
			escreva("Reservado para ", empresa, " no(a) ", diasemana, " às ", horasemana, " horas")

		se(diasemana == "quinta" e horasemana >=7 e horasemana <=23)
			escreva("Reservado para ", empresa, " no(a) ", diasemana, " às ", horasemana, " horas")

		se(diasemana == "sexta" e horasemana >=7 e horasemana <=23)
			escreva("Reservado para ", empresa, " no(a) ", diasemana, " às ", horasemana, " horas")

		se(diasemana == "sabado" e horasemana >=7 e horasemana <=15)
			escreva("Reservado para ", empresa, " no(a) ", diasemana, " às ", horasemana, " horas")

		se(diasemana == "domingo" e horasemana >=7 e horasemana <=15)
			escreva("Reservado para ", empresa, " no(a) ", diasemana, " às ", horasemana, " horas")}
			senao escreva("Restaurante indisponível")
		
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */