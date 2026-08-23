/// Operator used for list of dependencies in criteria array.
enum Operator {
  valueAND("AND"),
  valueOR("OR");

  const Operator(this.wireValue);
  final String wireValue;

  static Operator fromValue(String value) {
    for (final item in Operator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operator value: $value');
  }
}
