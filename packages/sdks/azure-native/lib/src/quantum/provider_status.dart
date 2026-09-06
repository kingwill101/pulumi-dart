import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning status field
enum ProviderStatus implements pulumi.PulumiEnum<String> {
  succeeded("Succeeded"),
  launching("Launching"),
  updating("Updating"),
  deleting("Deleting"),
  deleted("Deleted"),
  failed("Failed");

  const ProviderStatus(this.wireValue);
  @override
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
