const entrada = require("readline-sync");

console.log("=== SISTEMA DE CONTROLE DE QUALIDADE ===")

const pecas = [];


const somatotal = entrada.questionFloat("Quantas pecas deseja avaliar? ");

for(let i = 0; i < somatotal; i++){
    let peca = entrada.questionFloat(`Digite o peso da peca ${i+1}: `);
    pecas.push(peca);
}
console.log("\n--- RELATORIO DA AUDITORIA ---")

console.log(`Pessos registrada; ${pecas.join ( "kg |")} kg`)

