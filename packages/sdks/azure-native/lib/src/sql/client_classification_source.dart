enum ClientClassificationSource {
  valueNone("None"),
  valueNative("Native"),
  valueRecommended("Recommended"),
  valueMIP("MIP");

  const ClientClassificationSource(this.value);
  final String value;

  static ClientClassificationSource fromValue(String value) {
    for (final item in ClientClassificationSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientClassificationSource value: $value');
  }
}

