const alunos = ["Ana", "Bruno", "Carlos", "Enzo", "Isa", "Laura"];

console.log("Lista de alunos");
console.log(alunos);

console.log(`O primeiro aluno da lista é: ${alunos[0]}`);
console.log(`Segundo aluno: ${alunos[1]}`);
console.log(`Terceiro aluno: ${alunos[2]}`);
console.log(`Quantidade de alunos: ${alunos.length}`);
console.log(`Ultimo aluno: ${alunos[5]}`);

alunos.push("Celcilia");
alunos.push("Leona");
alunos.splice(3,1);

// acresentar mais de 2 nomes ao array
// mostrar o terceiro aluno
// mostrar o ultimo aluno
