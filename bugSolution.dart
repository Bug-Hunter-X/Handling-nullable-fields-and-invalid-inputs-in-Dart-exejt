```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ?? 0; // Using ?? to provide a default value

  void setValue(int newValue) {
    if (newValue >= 0) {
      _value = newValue;
    } else {
      // Handle negative input appropriately.  Throwing an exception is one option.
      throw ArgumentError('Value cannot be negative');
    }
  }
}

void main() {
  var obj = MyClass(10);
  print(obj.value); // Output: 10

  try {
    obj.setValue(-5); // Throws an ArgumentError
  } catch (e) {
    print('Error: $e'); // Handle the exception
  }
}
```