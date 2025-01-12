import 'dart:io';

void main() {
  carproperties(Cars.marcedes);
  carProperties(Cars.farari);
  final person = Mohsin('mohsinkhan');
  person.beauty();
  person.Smartness();

  print(person.LastName);
}

enum Cars { marcedes, farari, honda }

void carproperties(Cars cars) {
  if (cars == Cars.marcedes) {
    print('This is marcedes');
  } else if (cars == Cars.farari) {
    print('this is farari');
  } else if (cars == Cars.honda) {
    print('this is honda');
  } else {
    'unknown';
  }
}

void carProperties(Cars cars) {
  switch (cars) {
    case Cars.marcedes:
      print('this is marcedes');
      break;
    case Cars.farari:
      print('this is farari');
      break;
    case Cars.honda:
      print('This is Honda');
      break;
    case null:
      print('no car is mentoined');
  }
}

class Mohsin {
  void beauty() {
    print('Mohsin is Beautiful');
  }

  void Smartness() {
    print('Mohsin is Smart');
  }

  final String LastName;
  Mohsin(this.LastName);
}
