// libera a habilidade de dash para o jogador
other.dashLiberado = true;

// remove o pulo duplo
other.max_pulos = 1;



// reinicia os contadores do dash
other.dashTempo = 0;
other.dashCooldown = 0;

// remove o objeto de habilidade do mapa
instance_destroy();


// No evento Collision com obj_player (dentro do objeto coletável)
other.texto_flutuante = "Dash desbloqueado! [E]";
other.tempo_texto = 360; // 180 frames = 3 segundos (se o jogo roda a 60 FPS)]
other.cor_texto = c_black; // Define que ESSE texto será preto

// Destrói o poder depois que o player coleta
instance_destroy();
