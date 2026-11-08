

// movimento do player
xspd = 0;
yspd = 0;

moveSpd = 4;
runSpd = 6;

// mecanica do pulo
jump = -9;
grav = 0.4;

// maximo de pulos para limitar o double jump
pulos = 0;
max_pulos = 2;

// mecanica do dash

// dashSpd é a força do dash, ele multiplica a velocidade de caminhada do player
dashSpd = 12;

//duracao do dash
dashDuracao = 10;
dashTempo = 0;

//contador para usar o dash de novo, intervalo entre eles
dashEspera = 40;
dashCooldown = 0;

// precisa disso para conseguir usar tanto pra esquerda quanto para a direita
dashDirecao = 1;

// atributos do jogador, tudo isso aqui eu deixei provisório, nao sei nem se vai dar para atacar , mas enfim
vida = 100;
maxVida = 100;
dano = 10;

// mecanicas do walljump

//comeca bloqueado no inicio da fase, até pegar a orb
wallJumpLiberado = false;

//isso aqui é a velocidade que o player deslza, quanto menor, mais grudado ele fica na parede, e vice versa
wallSlideSpd = 1.0;


// o X é para ele pular na direcao contraria da parede
// o Y é para ele pular para cima (obvio), tem que ser negativo porque o gamemaker usa assim
wallJumpX = 6;
wallJumpY = -9;

wallJumpTempo = 0;
wallJumpDuracao = 10;

wallJumpDirecao = 0;

