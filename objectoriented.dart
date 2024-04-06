import 'dart:html';
//interface definition
abstract class Animal{
  void makeSound();
}
//base class with inheritance
class LivingBeing{
  void breathe(){
    print('Breathing...');
  }
}
//class implementing an interface
class Dog extends LivingBeing implements Animal{
  @override 
  void makeSound(){
    print('woof!');
  }
}
//subclass overriding a method
class Cat extends Animal{
  void makeSound(){
    print('Meow!');
  }
}
//class initialized with data from a file
class Filereader{
  List<String>readLinesFromFile(String filename,author){
    var file=File(filename,author);
    return file.readAsLineSync();
  }
}
//method demonstrating the use of a loop
void printLinesFromFile(String filename){
  var reader=FileReader();
  var lines=reader.readLinesFromFile(filename);
  for(var line in lines){
    print(line);
  }
}
void main(){
  var dog=Dog();
  dog.breathe();
  dog.makeSound();
  var cat=Cat();
  cat.makeSound();
  printLinesFromFile('data.txt');
}