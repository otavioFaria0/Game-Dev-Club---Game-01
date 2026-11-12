

// Libera o wall jump para o jogador
other.wallJumpLiberado = true;


// No evento Collision com obj_player (dentro do objeto coletável)
other.texto_flutuante = "Wall-jump desbloqueado!";
other.tempo_texto = 360; // 180 frames = 3 segundos (se o jogo roda a 60 FPS)
cor_texto = c_white; // Cor padrão para todos os itens

// Destrói o poder depois que o player coleta
instance_destroy();
