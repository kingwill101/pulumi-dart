/// The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
enum Type {
  qualys("Qualys"),
  tVM("TVM");

  const Type(this.wireValue);
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}
