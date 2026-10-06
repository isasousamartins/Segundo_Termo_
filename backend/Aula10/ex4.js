const entrada = require("readline-sync");

console.log("=== REGISTRO ");

const temperaturas = [];
const quantidade = entrada.questionInt("Quantas temperaturas deseja registrar? ");

for(let i = 0; i < quantidade; i++){
    let temperatura = entrada.questionFloat(`Temperatura ${i+1}: `);
    temperaturas.push(temperatura);

}


console.log("\n -----relatorio-------");
console.log(`Temperaturas registrada; ${temperaturas.join ( "C° |")} C`)


