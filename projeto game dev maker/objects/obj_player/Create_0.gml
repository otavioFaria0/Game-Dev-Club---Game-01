
// movimento do player
xspd = 0;
yspd = 0;

moveSpd = 3.2;
runSpd = 5;

// mecanica do pulo
jump = -9;
grav = 0.4;

// CONTROLE DAS HABILIDADES

if (!variable_global_exists("dashLiberado"))
{
    global.dashLiberado = false;
}

dashLiberado = global.dashLiberado;

// maximo de pulos para limitar o double jump
pulos = 0;
max_pulos = 2;

if (dashLiberado)
{
    max_pulos = 1;
}

// mecanica do dash

// velocidade do dash
dashSpd = 15;

// duracao do dash
dashDuracao = 15;
dashTempo = 0;

// intervalo entre os dashes
dashEspera = 40;
dashCooldown = 0;

// direcao do dash
dashDirecao = 1;

// atributos do jogador
vida = 100;
maxVida = 100;
dano = 10;

// mecanicas do walljump

// comeca bloqueado no inicio da fase, até pegar a orb
wallJumpLiberado = false;

// velocidade de deslizar na parede
wallSlideSpd = 1.0;

// impulso horizontal e vertical do walljump
wallJumpX = 6;
wallJumpY = -9;

wallJumpTempo = 0;
wallJumpDuracao = 10;
wallJumpDirecao = 0;


// ANIMACOES DO PLAYER

sprite_index = spr_player_idle;

// mascara de colisao fixa
mask_index = spr_player_idle;

// velocidade das animacoes
image_speed = 0.2;

// tamanho do personagem
escalaPlayer = 1.4;

// direcao do personagem
// 1 = direita
// -1 = esquerda
direcaoPlayer = 1;

// orientacao original dos sprites
orientacaoSprite = 1;

// escala fixa para nao inverter a colisao
image_xscale = escalaPlayer;
image_yscale = escalaPlayer;

// variaveis de texto para os coletaveis
texto_flutuante = "";
tempo_texto = 0;
cor_texto = c_white;


// SISTEMA DE ESCURIDAO

// inicialmente o jogador enxerga normalmente
visaoLimitada = false;

// raio da area visivel ao redor do jogador
raioVisao = 180;

// intensidade da escuridao
// 0 = transparente
// 1 = completamente preto
intensidadeEscuridao = 0.95;

// superficie utilizada para desenhar a escuridao
superficieEscuridao = -1;
