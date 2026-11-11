
// se nao tiver essa condição aqui, ele tenta avançar para um nivel que nao existe
if (room_next(room) != -1)
{    
    room_goto_next();
}