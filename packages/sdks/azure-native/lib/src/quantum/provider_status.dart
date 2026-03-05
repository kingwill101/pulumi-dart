/// Provisioning status field
enum ProviderStatus {
  succeeded("Succeeded"),
  launching("Launching"),
  updating("Updating"),
  deleting("Deleting"),
  deleted("Deleted"),
  failed("Failed");

  const ProviderStatus(this.wireValue);
  final String wireValue;

  static ProviderStatus fromValue(String value) {
    for (final item in ProviderStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProviderStatus value: $value');
  }
}

