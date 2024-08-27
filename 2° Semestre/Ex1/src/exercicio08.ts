let salario:number = 2000, reajuste:number = 20;

let novoSalario:number = ((salario * reajuste) / 100) + salario;

console.log("Salário anterior: " + salario);
console.log("Novo salário com reajuste de " + reajuste + "% = " + novoSalario);