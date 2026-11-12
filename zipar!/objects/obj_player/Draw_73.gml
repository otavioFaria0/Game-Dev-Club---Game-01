if (tempo_texto > 0) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    
    draw_set_color(cor_texto); // Agora ele usa a cor que o objeto mandou
    draw_text(x, bbox_top - 10, texto_flutuante);
    
    // Reseta as configurações de desenho
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}