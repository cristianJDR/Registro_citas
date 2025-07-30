function login() {
    const usuario = document.getElementById("usuario").value;
    const clave = document.getElementById("clave").value;

    fetch('login.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: `usuario=${usuario}&clave=${clave}`
    })
        .then(res => res.text())
        .then(data => {
            if (data === 'ok') {
                window.location.href = 'citas.html';
            } else {
                document.getElementById("mensaje").textContent = 'Credenciales incorrectas';
            }
        });
}