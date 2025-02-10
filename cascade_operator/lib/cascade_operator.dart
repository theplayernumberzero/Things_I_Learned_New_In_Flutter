//Cascade operator: The cascade operator (..) is used to perform a sequence of operations on the same object. It is very useful when you want to perform multiple operations on the same object.

class Person {
  String name;
  int age;
  Person({required this.name, required this.age});
  void showOutput() {
    print(name);
    print(age);
  }
}

void main() {
  //Without Cascade Operator
  var person = Person(name: 'Max', age: 30);
  person.name = 'Maximilian';
  person.age = 31;
  person.showOutput();

  //With Cascade Operator
  person
    ..name = 'Stephen'
    ..age = 33
    ..showOutput();

  //With Cascade Operator and use directly class name
  Person(name: 'Ali', age: 33)
    ..name = 'John Doe'
    ..age = 36
    ..showOutput();
}
