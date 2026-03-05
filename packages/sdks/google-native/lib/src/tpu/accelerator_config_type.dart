/// Required. Type of TPU.
enum AcceleratorConfigType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  v2("V2"),
  v3("V3"),
  v4("V4");

  const AcceleratorConfigType(this.wireValue);
  final String wireValue;

  static AcceleratorConfigType fromValue(String value) {
    for (final item in AcceleratorConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorConfigType value: $value');
  }
}

