/// Upstream auth type enum.
enum UpstreamAuthType {
  valueNone("None"),
  valueManagedIdentity("ManagedIdentity");

  const UpstreamAuthType(this.wireValue);
  final String wireValue;

  static UpstreamAuthType fromValue(String value) {
    for (final item in UpstreamAuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpstreamAuthType value: $value');
  }
}

