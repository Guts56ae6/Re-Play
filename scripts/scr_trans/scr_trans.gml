global.entrou=true
global.local=noone
function create_tras(local){
    global.local=local
    layer_sequence_create("trans",room_width/2,room_height/2,sqc_sai)
}
function trans(){
    global.entrou=true
    switch (global.local) {
    	case 0:{
            room_restart()
            global.entrou=true
            break;
        }
        case 1:{
            room_goto(rm_shump)
            global.entrou=true
            break;
        }
        case 2:{
            game_end()
            break;
        }
    }
}