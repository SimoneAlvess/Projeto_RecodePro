// Alterna formulário de login e cadastro
document.addEventListener("DOMContentLoaded", function () {
    const formLogin = document.getElementById("formLogin");
    const formCadastro = document.getElementById("formCadastro");
    const linkCadastro = document.getElementById("linkCadastro");
    const linkLogin = document.getElementById("linkLogin");

    formLogin.style.display = "block";
    formCadastro.style.display = "none";

    linkCadastro.addEventListener("click", function (event) {
        event.preventDefault();
        formLogin.style.display = "none";
        formCadastro.style.display = "block";
    });

    linkLogin.addEventListener("click", function (event) {
        event.preventDefault();
        formCadastro.style.display = "none";
        formLogin.style.display = "block";
    });
    
    // Função de icone para ocultar senha
    function togglePasswordVisibility(inputId) {
        let input = document.querySelector(`#${inputId}`);

        if (input.type === 'text') {
            input.type = 'password';
        } else {
            input.type = 'text';
        }
    }

    document.querySelector('.iconLogin').addEventListener('click', function () {
        togglePasswordVisibility('inputSenhaLogin');
    });

    document.querySelector('.iconCadastro').addEventListener('click', function () {
        togglePasswordVisibility('inputSenhaCadastro');
    });

});





