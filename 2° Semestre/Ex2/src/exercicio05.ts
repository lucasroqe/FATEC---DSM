var readline = require('readline');

var leitor = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

leitor.question("Digite o número total de eleitores: ", function (totalEleitores: string) {
    const respEleitores = parseInt(totalEleitores);

    leitor.question("Digite o total de votos brancos: ", function (votosBrancos: string) {
        const respBrancos = parseInt(votosBrancos);

        leitor.question("Digite o total de votos nulos: ", function (votosNulos: string) {
            const respNulos = parseInt(votosNulos);

            leitor.question("Digite o total de votos válidos: ", function (votosValidos: string) {
                const respValidos = parseInt(votosValidos);

                leitor.question("Digite o total de votos obtidos na última eleição: ", function (votosUltima: string) {
                    const respUltima = parseInt(votosUltima);

                    const totalVotos = respValidos + respBrancos;
                    const porcentVotos= (respUltima / totalVotos) * 100;
                    const porcentEleitores = (respUltima / respEleitores) * 100;

                    if (porcentVotos > 10) {
                        console.log("Eleito");
                    } else {
                        console.log("Não eleito");
                    }

                    console.log("O percentual que sua votação atingiu perante a quantidade de eleitores do município foi de: " + porcentEleitores.toFixed(2) + "%");

                    leitor.close();
                });
            });
        });
    });
});
