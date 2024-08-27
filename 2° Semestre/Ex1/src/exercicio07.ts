let totalEleitores:number = 100, brancos:number = 10, nulos:number = 20, validos:number = 70;


let pBrancos:number = (brancos / totalEleitores) * 100;
let pNulos:number = (nulos / totalEleitores) * 100;
let pValidos:number = (validos / totalEleitores) * 100;

console.log("Porcentagem em relação ao total de eleitores");
console.log("Brancos: " + pBrancos + "\nNulos: " + pNulos + "\nValidos: " + pValidos);


