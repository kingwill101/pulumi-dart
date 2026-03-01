/// The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
enum Type {
  valueQualys("Qualys"),
  valueTVM("TVM");

  const Type(this.value);
  final String value;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}

