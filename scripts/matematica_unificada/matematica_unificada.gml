// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function matematica_unificada(){
	var num11 = random_range(0, 49);
	var num12 = random_range(0, 50);
	var num21 = random_range(0, 499);
	var num22 = random_range(0, 500);
	
	//somas
	var respota = num11 + num12;
	
	var respota = num21 + num22;
	
	
	
	
	//subtração
	if(num12 > num11){
		//display num12 - num11
		var resposta = num12 - num11;
	}
	else{
		var respota = num11 - num12;
	}
	
	
	if(num22 > num21){
		//display num12 - num11
		var resposta = num22 - num21;
	}
	else{
		var respota = num21 - num22;
	}
	
	
	
	
	
	
	//multiplicação só tem uma respota pq 50 * 49 já tá mt grande pra uma criança
	var respota = num11 * num12;
	
	//não tem divisão pq ninguém gosta de número quebrado
	
	
	
	
	
	// Esses valores serão compartilhados, pra criar aquele efeito que a vanessa
	// falou, onde todas as opções diferem apenas no último dígito. Ex: 155 255 755 955 455, todos tem o 55	
	var dig1 = resposta mod 10;
	var dig2 = resposta mod 100;
	
	//Para adição nível 1, o resultado terá apenas 2 dígitos
	var bola1 = dig1 + 10 * random_range(0, 9);
	var bola2 = dig1 + 10 * random_range(0, 9);
	var bola3 = dig1 + 10 * random_range(0, 9);
	var bola4 = dig1 + 10 * random_range(0, 9);
	var bola5 = dig1 + 10 * random_range(0, 9);
	
	
	//Para nível 2, 3 dígitos, e aqui ta bom
	var bola1 = dig1 + dig2 + 100 * random_range(0, 9);
	var bola2 = dig1 + dig2 + 100 * random_range(0, 9);
	var bola3 = dig1 + dig2 + 100 * random_range(0, 9);
	var bola4 = dig1 + dig2 + 100 * random_range(0, 9);
	var bola5 = dig1 + dig2 + 100 * random_range(0, 9);
}