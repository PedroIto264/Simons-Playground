//Só para mostrar se as coisas estão sendo atualizadas
/*
if state = state_livre 
{
	draw_text(50,50, "state = state_livre")
	draw_text(50, 75, velocidade)
}
else if state = state_segurando_bola 
{
	draw_text(50,50, "state = state_segurando_bola")
	draw_text(50, 75, velocidade)
}
else
{
	draw_text(50, 50, "state = arremessando")
	draw_text(50, 75, "0")
}

draw_text(50, 75, velocidade)
*/
if room != room_tutorial
{
	draw_text(350,50, "1 = Segura a Bola")
	draw_text(350,75, "Espaço = Arremessa a Bola")
	draw_text(350, 100, "3 = Sem a Bola")

}

if room = room_tutorial and state = state_livre
{
	draw_text_transformed_color(280,100,"Para mover o personagem utilize as setinhas!!!",2,2,0,c_black,c_black,c_black,c_black, 255)
	draw_sprite_ext(spr_seta, image_index, 500, 200, 0.08, 0.08,0,c_white,1)
	draw_sprite_ext(spr_seta, image_index, 800, 200, 0.08, 0.08,180,c_white,1)
	draw_text_transformed_color(280,300,"Ande ate o quadrado vermelho para continuar",2,2,0,c_black,c_black,c_black,c_black, 255)
	
}
else if room = room_tutorial and state = state_segurando_bola
{
	draw_text_transformed_color(280,100,"Agora que está no modo segurando a bola, va para",2,2,0,c_black,c_black,c_black,c_black, 255)
	draw_text_transformed_color(280,150,"um lugar que sentir confortavel para acertar a cesta",2,2,0,c_black,c_black,c_black,c_black, 255)
}
else if room = room_tutorial and state = state_arremessando
{
	draw_text_transformed_color(280,100,"Use todas as setinhas para mirar a bola",2,2,0,c_black,c_black,c_black,c_black, 255)
	draw_text_transformed_color(280,150,"Aperte ESPACO para arremessar a bola",2,2,0,c_black,c_black,c_black,c_black, 255)
}
if room = room_tutorial and !instance_exists(inst_131DCE28)
{
	draw_text_transformed_color(280,400,"Parabens! Voce ganhou!! Aperte R Para voltar ao menu!",2,2,0,c_black,c_black,c_black,c_black, 255)
}