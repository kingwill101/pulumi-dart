/// The status.
enum ServiceStatus {
  active("Active"),
  inactive("Inactive");

  const ServiceStatus(this.wireValue);
  final String wireValue;

  static ServiceStatus fromValue(String value) {
    for (final item in ServiceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceStatus value: $value');
  }
}
