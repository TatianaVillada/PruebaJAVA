function cargarPaises() {
    var array = ["Brasil", "Colombia", "Chile", "Ecuador", "México"];
    array.sort();
    addOptions("pais", array);
}

//Función para agregar opciones a un <select>.
function addOptions(domElement, array) {
    var selector = document.getElementsByName(domElement)[0];
    for (pais in array) {
        var opcion = document.createElement("option");
        opcion.text = array[pais];
        // Añadimos un value a los option para hacer mas facil escoger las ciudades
        opcion.value = array[pais].toLowerCase();
        selector.add(opcion);
    }
}


function cargarCiudades() {
    // Objeto de paises con ciudades
    var listaCiudades = {
        brasil: ["Sao Paulo", "Rio de Janeiro", "Salavador de Bahía", "Belo Horizonte", "Brasilia"],
        colombia: ["Bogotá", "Medellín", "Cartagena", "Cali", "Santa Marta"],
        chile: ["Santiago de Chile", "Punta Arenas", "Arica", "Viña del Mar", "Valdivia"],
        ecuador: ["Quito", "Guayaquil", "Ambato", "Cuenca", "Manta"],
        méxico: ["Monterrey", "Guadalajara", "Tijuana", "Ciudad de México", "León"]
    };

    var paises = document.getElementById('pais');
    var ciudades = document.getElementById('ciudad');
    var paisSeleccionado = paises.value;

    // Se limpian las ciudades
    ciudades.innerHTML = '<option value="">Seleccione una ciudad...</option>';

    if (paisSeleccionado !== '') {
        // Se seleccionan las ciudades y se ordenan
        paisSeleccionado = listaCiudades[paisSeleccionado];
        paisSeleccionado.sort();

        // Insertamos las ciudades
        paisSeleccionado.forEach(function (ciudad) {
            let opcion = document.createElement('option');
            opcion.value = ciudad;
            opcion.text = ciudad;
            ciudades.add(opcion);
        });
    }
}

// Iniciar la carga de paises solo para comprobar que funciona
cargarPaises();


