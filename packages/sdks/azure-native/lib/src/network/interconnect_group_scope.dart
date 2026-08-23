/// Scope of interconnect group resource.
enum InterconnectGroupScope {
  none("None"),
  infiniBand("InfiniBand");

  const InterconnectGroupScope(this.wireValue);
  final String wireValue;

  static InterconnectGroupScope fromValue(String value) {
    for (final item in InterconnectGroupScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectGroupScope value: $value');
  }
}
