switch (fase) {

    case "entrando": {

        image_yscale = min(image_yscale + 0.08, 1);

        if (image_yscale >= 1) {
            image_yscale = 1;
            fase = "ativo";
            alarm[0] = 60;
        }

        break;
    }

    case "saindo": {

        if (y < -sprite_get_height(sprite_index)) {
            instance_destroy();
        }

        break;
    }
}
if y<=758{
    instance_destroy()
}