/// Defines the environment type - Production/Non Production.
enum SAPEnvironmentType {
  nonProd("NonProd"),
  prod("Prod");

  const SAPEnvironmentType(this.wireValue);
  final String wireValue;

  static SAPEnvironmentType fromValue(String value) {
    for (final item in SAPEnvironmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPEnvironmentType value: $value');
  }
}

