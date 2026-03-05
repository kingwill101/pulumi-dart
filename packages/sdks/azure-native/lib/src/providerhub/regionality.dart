/// The regionality.
enum Regionality {
  notSpecified("NotSpecified"),
  global("Global"),
  regional("Regional");

  const Regionality(this.wireValue);
  final String wireValue;

  static Regionality fromValue(String value) {
    for (final item in Regionality.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Regionality value: $value');
  }
}

