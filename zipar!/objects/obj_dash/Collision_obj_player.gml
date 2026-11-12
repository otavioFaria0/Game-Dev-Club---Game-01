// libera a habilidade de dash para o jogador
other.dashLiberado = true;

// remove o pulo duplo
other.max_pulos = 1;



// reinicia os contadores do dash
other.dashTempo = 0;
other.dashCooldown = 0;

// remove o objeto de habilidade do mapa
instance_destroy();