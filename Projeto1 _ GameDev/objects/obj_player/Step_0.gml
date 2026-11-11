// INPUTS DO JOGADOR

var _left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var _right = keyboard_check(ord("D")) || keyboard_check(vk_right);

// verifica se apertou espaço
var _jump = keyboard_check_pressed(vk_space);

// verifica se está segurando shift
var _run = keyboard_check(vk_shift);

// verifica se apertou E
var _dash = keyboard_check_pressed(ord("E"));


// VELOCIDADE DO PLAYER

var velocidade = moveSpd;

if (_run)
{
    velocidade = runSpd;
}

xspd = (_right - _left) * velocidade;


// DIRECAO DO PERSONAGEM

// A = esquerda
if (_left && !_right)
{
    direcaoPlayer = -1;
}

// D = direita
else if (_right && !_left)
{
    direcaoPlayer = 1;
}


// VERIFICA SE ESTA NO CHAO

var no_chao = place_meeting(x, y + 1, obj_wall);

// reseta os pulos quando encosta no chão
if (no_chao)
{
    if (yspd > 0)
    {
        yspd = 0;
    }

    pulos = 0;
}


// GRAVIDADE

if (!no_chao)
{
    yspd += grav;
}


// MECANICA DAS PAREDES

var parede_esquerda = place_meeting(x - 1, y, obj_wall);
var parede_direita = place_meeting(x + 1, y, obj_wall);

var pressionando_parede =
    (parede_esquerda && _left) ||
    (parede_direita && _right);


// WALL SLIDE

var wallSliding = wallJumpLiberado &&
                  !no_chao &&
                  pressionando_parede &&
                  yspd > 0 &&
                  wallJumpTempo <= 0;

if (wallSliding)
{
    yspd = min(yspd, wallSlideSpd);
}


// WALL JUMP

if (_jump && wallJumpLiberado &&
    !no_chao && pressionando_parede)
{
    yspd = wallJumpY;

    if (parede_direita)
    {
        wallJumpDirecao = -1;
    }
    else
    {
        wallJumpDirecao = 1;
    }

    wallJumpTempo = wallJumpDuracao;
    direcaoPlayer = wallJumpDirecao;
}
else if (_jump && pulos < max_pulos)
{
    yspd = jump;
    pulos++;
}


// IMPULSO DO WALLJUMP

if (wallJumpTempo > 0)
{
    xspd = wallJumpDirecao * wallJumpX;
    wallJumpTempo--;

    direcaoPlayer = wallJumpDirecao;
}


// DASH

if (dashCooldown > 0)
{
    dashCooldown--;
}

if (_dash && dashCooldown <= 0 && dashTempo <= 0)
{
    dashTempo = dashDuracao;
    dashCooldown = dashEspera;
    dashDirecao = direcaoPlayer;
}

if (dashTempo > 0)
{
    xspd = dashDirecao * dashSpd;
    yspd = 0;

    dashTempo--;
    direcaoPlayer = dashDirecao;
}


// ESCALA FIXA PARA COLISAO

image_xscale = escalaPlayer;
image_yscale = escalaPlayer;


// MOVIMENTO E COLISAO

move_and_collide(xspd, yspd, obj_wall);


// VERIFICA COLISAO DEPOIS DO MOVIMENTO

var no_chao_final = place_meeting(x, y + 1, obj_wall);

if (no_chao_final && yspd >= 0)
{
    yspd = 0;
    pulos = 0;
}


// VERIFICA PAREDES APOS MOVIMENTO

var parede_esquerda_final = place_meeting(x - 1, y, obj_wall);
var parede_direita_final = place_meeting(x + 1, y, obj_wall);

var pressionando_parede_final =
    (parede_esquerda_final && _left) ||
    (parede_direita_final && _right);


// ANIMACOES DO PLAYER

var _sprite = spr_player_idle;

var _wall_slide_anim = wallJumpLiberado &&
                       !no_chao_final &&
                       pressionando_parede_final &&
                       yspd > 0 &&
                       wallJumpTempo <= 0 &&
                       dashTempo <= 0;

if (no_chao_final)
{
    if (abs(xspd) > 0)
    {
        _sprite = spr_player_run;
    }
    else
    {
        _sprite = spr_player_idle;
    }
}
else
{
    if (_wall_slide_anim)
    {
        _sprite = spr_player_wall_slide;
    }
    else
    {
        _sprite = spr_player_jump;
    }
}


// TROCA DE SPRITE

if (sprite_index != _sprite)
{
    sprite_index = _sprite;
    image_index = 0;
}