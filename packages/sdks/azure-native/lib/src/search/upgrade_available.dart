/// Indicates if the search service has an upgrade available.
enum UpgradeAvailable {
  notAvailable("notAvailable"),
  available("available");

  const UpgradeAvailable(this.wireValue);
  final String wireValue;

  static UpgradeAvailable fromValue(String value) {
    for (final item in UpgradeAvailable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeAvailable value: $value');
  }
}
