

// Movimentos do player
xspd = 0;
yspd = 0;

moveSpd = 4;
runSpd = 6;

// Mêcanica do pulo
jump = -9;
grav = 0.4;

// Máximo de pulos para limitar o Double Jump (Pulo Duplo)
pulos = 0;
max_pulos = 2;

// Mêcanica do dash

// dashSpd é a força do dash, ele multiplica a velocidade de caminhada do jogador
dashSpd = 12;

//Duração do dash
dashDuracao = 10;
dashTempo = 0;

//Contador para usar o dash de novo, intervalo entre eles
dashEspera = 40;
dashCooldown = 0;

// Direção do dash, usa tanto pra esquerda quanto para a direita
dashDirecao = 1;

// Atributos do jogador, tudo isso aqui eu deixei provisório, nem sei se vai dar para atacar , mas enfim
vida = 100;
maxVida = 100;
dano = 10;

// Mêcanicas do Wall Jump (pular na parede)

//comeca bloqueado no inicio da fase, até pegar a orb
wallJumpLiberado = false;

//isso aqui é a velocidade que o player deslza, quanto menor, mais grudado ele fica na parede, e vice versa
wallSlideSpd = 1.0;


// o X é para ele pular na direcao contraria da parede
// o Y é para ele pular para cima (obvio), tem que ser negativo porque o Game Maker usa assim
wallJumpX = 6;
wallJumpY = -9;

wallJumpTempo = 0;
wallJumpDuracao = 10;

wallJumpDirecao = 0;

