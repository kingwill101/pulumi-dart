/// This property can be Enabled/Disabled to allow or deny access with the current access keys. Can be updated even after database is created.
enum AccessKeysAuthentication {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const AccessKeysAuthentication(this.wireValue);
  final String wireValue;

  static AccessKeysAuthentication fromValue(String value) {
    for (final item in AccessKeysAuthentication.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessKeysAuthentication value: $value');
  }
}

