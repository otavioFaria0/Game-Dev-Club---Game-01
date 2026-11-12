
// SISTEMA DE ESCURIDAO

if (visaoLimitada)
{
    // tamanho da interface
    var _largura = display_get_gui_width();
    var _altura = display_get_gui_height();

    // cria ou recria a superficie quando necessario
    if (!surface_exists(superficieEscuridao))
    {
        superficieEscuridao = surface_create(_largura, _altura);
    }
    else if (surface_get_width(superficieEscuridao) != _largura ||
             surface_get_height(superficieEscuridao) != _altura)
    {
        surface_free(superficieEscuridao);
        superficieEscuridao = surface_create(_largura, _altura);
    }

    if (surface_exists(superficieEscuridao))
    {
        // encontra a camera da sala
        var _camera = view_camera[0];

        var _cameraX = camera_get_view_x(_camera);
        var _cameraY = camera_get_view_y(_camera);

        var _cameraW = camera_get_view_width(_camera);
        var _cameraH = camera_get_view_height(_camera);

        // converte a posicao do jogador para a interface
        var _playerX = (x - _cameraX) * (_largura / _cameraW);
        var _playerY = (y - _cameraY) * (_altura / _cameraH);

        // ajusta o raio conforme a escala da camera
        var _raio = raioVisao * (_largura / _cameraW);

        // desenha a camada de escuridao
        surface_set_target(superficieEscuridao);

        draw_clear_alpha(c_black, 0);

        draw_set_color(c_black);
        draw_set_alpha(intensidadeEscuridao);

        draw_rectangle(0, 0, _largura, _altura, false);

        // remove a escuridao na area circular
        gpu_set_blendmode_ext(bm_zero, bm_inv_src_alpha);

        draw_set_alpha(1);

        draw_circle(
            _playerX,
            _playerY,
            _raio,
            false
        );

        // restaura o modo normal de desenho
        gpu_set_blendmode(bm_normal);

        draw_set_alpha(1);
        draw_set_color(c_white);

        surface_reset_target();

        // aplica a escuridao por cima da fase
        draw_surface(superficieEscuridao, 0, 0);
    }
}
