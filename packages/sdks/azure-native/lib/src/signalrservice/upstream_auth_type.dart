/// Upstream auth type enum.
enum UpstreamAuthType {
  valueNone("None"),
  valueManagedIdentity("ManagedIdentity");

  const UpstreamAuthType(this.value);
  final String value;

  static UpstreamAuthType fromValue(String value) {
    for (final item in UpstreamAuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpstreamAuthType value: $value');
  }
}

