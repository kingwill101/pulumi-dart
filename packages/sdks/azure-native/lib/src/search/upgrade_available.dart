/// Indicates if the search service has an upgrade available.
enum UpgradeAvailable {
  notAvailable("notAvailable"),
  available("available");

  const UpgradeAvailable(this.value);
  final String value;

  static UpgradeAvailable fromValue(String value) {
    for (final item in UpgradeAvailable.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeAvailable value: $value');
  }
}

