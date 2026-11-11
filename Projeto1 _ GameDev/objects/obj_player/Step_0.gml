

// inputs do jogador

var _left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var _right = keyboard_check(ord("D")) || keyboard_check(vk_right);

// Verifica se o jogador apertou espaço
var _jump = keyboard_check_pressed(vk_space);

// Verifica se o jogador está segurando shift
var _run = keyboard_check(vk_shift);

// Verifica se o jogador apertou E para dar dash
var _dash = keyboard_check_pressed(ord("E"));




// Velocidade padrão do personagem
var velocidade = moveSpd;

// Se estiver segurando shift, corre
if (_run)
{
    velocidade = runSpd;
}

xspd = (_right - _left) * velocidade;


// gravidade do jogo

yspd += grav;


// verifica se o player esta no chao

var no_chao = place_meeting(x, y + 1, obj_wall);

// Reseta os pulos quando o jogador encosta no chão
if (no_chao)
{
    if (yspd > 0)
    {
        yspd = 0;
    }

    pulos = 0;
}


// mecanica das paredes do walljump

var parede_esquerda = place_meeting(x - 1, y, obj_wall);
var parede_direita = place_meeting(x + 1, y, obj_wall);

// Verifica se o jogador está pressionando contra a parede
var pressionando_parede =
    (parede_esquerda && _left) ||
    (parede_direita && _right);

// Verifica se o jogador está deslizando pela parede
var wallSliding = wallJumpLiberado &&
                  !no_chao &&
                  pressionando_parede &&
                  yspd > 0 &&
                  wallJumpTempo <= 0;




// Reduz a velocidade de queda quando encostado na parede
if (wallSliding)
{
    yspd = min(yspd, wallSlideSpd);
}




// condicao para usar o walljump
if (_jump && wallJumpLiberado &&
    !no_chao && pressionando_parede)
{
    // Impulsiona o jogador para cima
    yspd = wallJumpY;

    // condicao para jogar o player na direção contraria da parede
    if (parede_direita)
    {
        wallJumpDirecao = -1;
    }
    else
    {
        wallJumpDirecao = 1;
    }

    // impulso horizontal do walljump
    wallJumpTempo = wallJumpDuracao;
}
else if (_jump && pulos < max_pulos)
{
    // Executa o pulo 
    yspd = jump;
    pulos++;
}




// impulso do walljump
if (wallJumpTempo > 0)
{
    xspd = wallJumpDirecao * wallJumpX;
    wallJumpTempo--;
}


// direcao do personagem, como ele ainda nao tem sprite, nao muda muita coisa
// mas ja deixei preparado para ele conseguir inverter o sprite nas duas direções

if (xspd != 0 && dashTempo <= 0 && wallJumpTempo <= 0)
{
    image_xscale = sign(xspd);
}


// mecanica do dash

// contador para limitar o intervalo do dash
if (dashCooldown > 0)
{
    dashCooldown--;
}

// condicao para usar o dash novamente
if (_dash && dashCooldown <= 0 && dashTempo <= 0)
{
    dashTempo = dashDuracao;
    dashCooldown = dashEspera;
    dashDirecao = image_xscale;
}

// essa condicao roda enquanto o dash esta ativo, quando o player esta na animacao do dash
if (dashTempo > 0)
{
    xspd = dashDirecao * dashSpd;
    yspd = 0;

    dashTempo--;
}


// movimento e colisao

move_and_collide(xspd, yspd, obj_wall);

