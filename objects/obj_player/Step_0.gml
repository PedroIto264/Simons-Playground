//Evento step: Código que é executado a cada frame do jogo.

key_direita = keyboard_check(vk_right) or keyboard_check(ord("D"))
key_esquerda = keyboard_check(vk_left) or keyboard_check(ord("A"))
key_espaco = keyboard_check_pressed(vk_space)
key_espaco_up = keyboard_check_released(vk_space)
key_menu = keyboard_check_pressed(ord("R"))
key_teste1 = keyboard_check_pressed(ord("1"))
key_teste2 = keyboard_check_pressed(ord("2"))
key_teste3 = keyboard_check_pressed(ord("3"))

state() //Inicializa a State Machine

//Testes para trocar os estados
if key_teste1
{
	state = state_segurando_bola
	instance_destroy(obj_bola)
}

if key_teste3
{
	state = state_livre
	instance_destroy(obj_bola)
}

if key_menu
{
	room = room_menu
}