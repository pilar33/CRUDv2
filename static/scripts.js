document.getElementById('clientesForm').onsubmit = function(event) {
    event.preventDefault();
    var form = this;
    var formData = new FormData(form);
    
    fetch(form.action, {
        method: 'POST',
        headers: {
            'X-Requested-With': 'XMLHttpRequest',
        },
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        var messageContainer = document.getElementById('messageContainer');
        messageContainer.style.display = 'block';

        if (data.form_is_valid) {
            messageContainer.classList.remove('alert-danger');
            messageContainer.classList.add('alert-success');
            messageContainer.textContent = data.message;
            document.getElementById('submitButton').style.display = 'none';
            window.parent.postMessage({ action: 'closeBootbox' }, '*');
        } else {
            messageContainer.classList.remove('alert-success');
            messageContainer.classList.add('alert-danger');
            var errorMessages = Object.values(JSON.parse(data.errors)).map(error => `<li>${error[0].message}</li>`).join('');
            messageContainer.innerHTML = `Hubo un error al agregar el cliente:<ul>${errorMessages}</ul>`;
        }
    });
};


function openFormModal(url) {
    bootbox.dialog({
        title: 'Formulario',
        message: "<iframe id='formIframe' src='" + url + "' scrolling='yes' marginwidth='0' marginheight='0' frameborder='no' width='100%' height='600'></iframe>",
        size: 'large',
        buttons: {
            cancel: {
                label: 'Cerrar',
                className: 'btn-secondary',
                callback: function() {
                    //debugger;
                    location.reload(); // Recargar la página principal para actualizar la grilla
                }
            }
        }
    });
    // Escucha mensajes desde el iframe para cerrar el bootbox
    window.addEventListener('message', function(event) {
        if (event.data.action === 'closeBootbox') {
            bootbox.hideAll();
            location.reload(); // Recargar la página principal para actualizar la grilla
        }
    }, false);
}

