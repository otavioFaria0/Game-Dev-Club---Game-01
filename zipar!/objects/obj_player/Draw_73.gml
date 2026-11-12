// CONTADOR PARA TEXTO DO COLETÁVEL
if (tempo_texto > 0) {
    // Centraliza o texto horizontalmente em relação à cabeça do player
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white); // Cor do texto (pode trocar por c_yellow, etc.)
    
    // Desenha o texto 20 pixels acima do topo da sprite do player
    // Se a origem (Origin) do seu player for no pé (Bottom Center), use: y - sprite_height - 10
    draw_text(x, bbox_top - 10, texto_flutuante);
    
    // Reseta o alinhamento para não bagunçar outros textos do jogo
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}