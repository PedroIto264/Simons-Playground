//Só para mostrar se as coisas estão sendo atualizadas
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