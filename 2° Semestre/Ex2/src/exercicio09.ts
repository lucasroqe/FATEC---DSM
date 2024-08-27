var readline = require('readline');

var leitor = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

leitor.question("Digite um número que represente um determinado mês do ano: ", function (mes:string) {
    const mesNum = parseInt(mes)

    switch (mesNum) {
        case 1:
                console.log("Janeiro");
                break;
            case 2:
                console.log("Fevereiro");
                break;
            case 3:
                console.log("Março");
                break;
            case 4:
                console.log("Abril");
                break;
            case 5:
                console.log("Maio");
                break;
            case 6:
                console.log("Junho");
                break;
            case 7:
                console.log("Julho");
                break;
            case 8:
                console.log("Agosto");
                break;
            case 9:
                console.log("Setembro");
                break;
            case 10:
                console.log("Outubro");
                break;
            case 11:
                console.log("Novembro");
                break;
            case 12:
                console.log("Dezembro");
                break;
            default:
                console.log("Erro na digitação, o número digitado não está entre 1 e 12.");
                break;
    }
    leitor.close();
})
