void main() {
  var liste1 = [1, 2, 3];
  var liste2 = [4, 5, 6];
  var liste3 = [...liste1, ...liste2];
  print(liste3); // [1, 2, 3, 4, 5, 6]
  var liste4 = [...liste1, ...liste2, 7, 8, 9];
  print(liste4); // [1, 2, 3, 4, 5, 6, 7, 8, 9];

  //İki map birleştiğinde aynı key varsa son eklenen key'in value'su alınır. (override)
  var map1 = {'key1': 'value1', 'key2': 'value2'};
  var map2 = {'key3': 'value3', 'key4': 'value4'};
  var map3 = {...map1, ...map2};
  print(map3); // {key1: value1, key2: value2, key3: value3, key4: value4}
  var map4 = {...map1, ...map2, 'key5': 'value5'};
  print(
      map4); // {key1: value1, key2: value2, key3: value3, key4: value4, key5: value5}
}
