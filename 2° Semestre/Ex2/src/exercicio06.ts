var readline = require('readline');

var leitor = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

leitor.question("Digite o seu salário mensal: ", function(salario:string) {

    const salarioValor = parseFloat(salario)

    console.log("Salário original: " + salarioValor);

    var salarioReajuste:number;

    if (salarioValor <= 650) {
        salarioReajuste = (salarioValor * 0.1) + salarioValor
        console.log("Percentual de reajuste: 10%");

    } else {
        salarioReajuste = (salarioValor * 0.05) + salarioValor
        console.log("Percentual de reajuste: 5%");
    }

    console.log("Salário reajustado: " + salarioReajuste);
        
    
    leitor.close();
})