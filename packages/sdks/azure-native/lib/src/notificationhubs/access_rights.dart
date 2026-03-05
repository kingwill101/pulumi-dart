/// Defines values for AccessRights.
enum AccessRights {
  manage("Manage"),
  send("Send"),
  listen("Listen");

  const AccessRights(this.wireValue);
  final String wireValue;

  static AccessRights fromValue(String value) {
    for (final item in AccessRights.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRights value: $value');
  }
}

