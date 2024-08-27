var readline = require('readline');

var leitor = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

leitor.question("Qual a sua idade? ", function(answer:string) {
    const resp = parseInt(answer);

    if (resp <= 10) {
        console.log("Criança");
    } else if(resp <= 13) {
        console.log("Pré-Adolescente");
    }else if(resp <= 17){
            console.log("Adolescente");
    }else if(resp <= 59){
        console.log("Adulto");
    }else if(resp >= 60){
        console.log("Idoso");
    }

    console.log("\nSua resposta " + resp);
    leitor.close();
});
   