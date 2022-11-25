//Evento Create: Tudo que acontece quando um objeto é criado dentro do jogo,
//aqui normalmente são declaradas variáveis apenas

//Variáveis relacionadas ao movimento:
velocidade_maxima = 8
aceleracao = .4
friccao = .8
velocidade = 0

//State Machine
state_livre = function() //Estado quando o player nao estiver segurando uma bola ainda
{
	//Código de movimentação
	input = key_direita - key_esquerda

	velocidade += input * aceleracao 

	if input == 0
	{
		velocidade *= friccao
	}
	velocidade = clamp(velocidade, -velocidade_maxima, velocidade_maxima)//Não lembro oq isso aq faz KKKK
	x += velocidade
	
	sprite_index = spr_player
}

state_segurando_bola = function() //Esse state vai ser a mesma coisa que o livre, só que nesse vai dar pra jogar a bola
{
	//Mesmo código de movimentação
	input = key_direita - key_esquerda

	velocidade += input * aceleracao

	if input == 0
	{
		velocidade *= friccao
	}
	
	velocidade = clamp(velocidade, -velocidade_maxima, velocidade_maxima)
	x += velocidade
	
	//Se o player apertar espaço enquanto segura abola, entrará no estado de arremesso
	if key_espaco_up and state = state_segurando_bola
	{
		state = state_arremessando
		instance_create_layer(obj_player.x, obj_player.y, "Bola", obj_bola)
	}
	
	
	
	sprite_index = spr_player_segurando_bola
}

state_arremessando = function ()
{
	
}

state = state_livre