enum ClientClassificationSource {
  valueNone("None"),
  valueNative("Native"),
  valueRecommended("Recommended"),
  valueMIP("MIP");

  const ClientClassificationSource(this.wireValue);
  final String wireValue;

  static ClientClassificationSource fromValue(String value) {
    for (final item in ClientClassificationSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientClassificationSource value: $value');
  }
}
