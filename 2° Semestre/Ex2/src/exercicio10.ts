var readline = require('readline');

var leitor = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

leitor.question("Digite o seu nome: ", function (nome:string) {
    leitor.question("Digite a sua categoria: ", function (categoria:string) {
        leitor.question("Digite o seu salário: ", function (salario:string) {
            const salarioNum = parseFloat(salario);

            var reajuste:number;

            switch (categoria.toUpperCase()) {
                case "A":
                case "C":
                case "F":
                case "H":
                    reajuste = (salarioNum * 0.1) + salarioNum;
                    break;
                case "B":
                case "D":
                case "E":
                case "I":
                case "J":
                case "T":
                    reajuste = (salarioNum * 0.15) + salarioNum;
                    break;
                case "K":    
                case "R":
                    reajuste = (salarioNum * 0.25) + salarioNum;   
                    break;
                case "L":    
                case "M":    
                case "N":    
                case "O":    
                case "P":    
                case "Q":    
                case "R":    
                case "S":
                     reajuste = (salarioNum * 0.35) + salarioNum;
                     break;
                case "U":    
                case "V":    
                case "X":    
                case "Y":    
                case "W":    
                case "Z":    
                    reajuste = (salarioNum * 0.5) + salarioNum;
                    break;   
                default:
                    console.log("Erro, categoria inválida");
                    leitor.close();
                    return;
            }
            console.log("\nNome: " + nome + "\nCategoria: " + categoria + "\nSalário anterior: " + salario + "\nSalário reajustado: " + reajuste);
            leitor.close();
        })         
    })
})