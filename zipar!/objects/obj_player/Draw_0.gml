draw_self();

// determina para qual lado o personagem olha
var _direcao = direcaoPlayer;

// inverte a direcao apenas durante o wallslide
if (sprite_index == spr_player_wall_slide)
{
    _direcao = -direcaoPlayer;
}

// desenha o personagem sem alterar a colisao
draw_sprite_ext(
    sprite_index,
    image_index,
    x,
    y,
    _direcao * escalaPlayer,
    escalaPlayer,
    0,
    c_white,
    1
);
