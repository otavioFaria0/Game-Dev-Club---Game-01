// movimento do player
xspd = 0;
yspd = 0;

moveSpd = 3.2;
runSpd = 5;

// mecanica do pulo
jump = -9;
grav = 0.4;

// maximo de pulos para limitar o double jump
pulos = 0;
max_pulos = 2;

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
// 1 = sprites normais olhando para direita
// -1 = sprites normais olhando para esquerda
orientacaoSprite = 1;

// escala fixa para nao inverter a colisao
image_xscale = escalaPlayer;
image_yscale = escalaPlayer;

//variaveis de texto para os coletaveis
texto_flutuante = "";
tempo_texto = 0;