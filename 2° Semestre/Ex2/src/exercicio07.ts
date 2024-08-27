var readline = require('readline');

var leitor = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

var x:number, y:number, z:number;
x = 0;
y = 0;
z = 0;


leitor.question("Digite o lado X do triângulo: ", function (valorX:string) {
    const x = parseFloat(valorX);
    
    leitor.question("Digite o lado Y do triângulo: ", function (valorY:string) {
        const y = parseFloat(valorY);

        leitor.question("Digite o lado Y do triângulo: ", function (valorZ:string) {
            const z = parseFloat(valorZ);
        
            if (x > y + z || y > x + z || z > y + x) {
                console.log("O comprimento de cada lado de um triângulo deve ser menor do que a soma dos comprimentos dos outros dois lados");
            } else {
                if (x === y && y === z && z === x) {
                    console.log("Equilátero");
                } else if (x == y || y == z || z == x){
                    console.log("Isósceles");
                } else{
                    console.log("Escaleno");
                }
            }
            leitor.close();
        }) 
    })  
})




