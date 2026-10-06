const entrada = require('readline-sync');

const nome = entrada.question("Digite seu nome: ");
const anoNascimento = entrada.questionInt("Digite seu ano de nascimento: ");

const idade = 2026 - anoNascimento;

if (idade >= 16) {
    console.log(`${nome}, você já pode votar!`);
} else {
    console.log(`${nome}, você ainda não pode votar.`);
}