String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  
  //Exemplo de código imperativo
  //for (var length in values) {
  //print(scream(length));
  
  //Exemplo de codigo funcional
  values.skip(1).take(3).map(scream).forEach(print);
  
  }

//skip = ignora o primeiro valor
//take = recebe os próximos 3 valores
// o restante é ignorado