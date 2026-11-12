
// desbloqueia a habilidade de dash
global.dashLiberado = true;

// libera o dash para o jogador
other.dashLiberado = true;

// remove o pulo duplo
other.max_pulos = 1;

// ajusta a quantidade atual de pulos
other.pulos = min(other.pulos, other.max_pulos);

// reinicia os contadores do dash
other.dashTempo = 0;
other.dashCooldown = 0;

// texto que aparece ao coletar a habilidade
other.texto_flutuante = "Dash liberado! Pulo duplo perdido!";
other.tempo_texto = 120;


// remove o coletavel da sala
instance_destroy();
