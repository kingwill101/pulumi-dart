/// The DB scale method.
enum SAPDatabaseScaleMethod {
  scaleUp("ScaleUp");

  const SAPDatabaseScaleMethod(this.wireValue);
  final String wireValue;

  static SAPDatabaseScaleMethod fromValue(String value) {
    for (final item in SAPDatabaseScaleMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPDatabaseScaleMethod value: $value');
  }
}

