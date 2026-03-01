/// Emission destination type.
enum DestinationType {
  valueAzureMonitor("AzureMonitor");

  const DestinationType(this.value);
  final String value;

  static DestinationType fromValue(String value) {
    for (final item in DestinationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationType value: $value');
  }
}

