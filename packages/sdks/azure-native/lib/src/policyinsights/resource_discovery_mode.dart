import 'package:pulumi/pulumi.dart' as pulumi;

/// The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
enum ResourceDiscoveryMode implements pulumi.PulumiEnum<String> {
  existingNonCompliant("ExistingNonCompliant"),
  reEvaluateCompliance("ReEvaluateCompliance");

  const ResourceDiscoveryMode(this.wireValue);
  @override
  final String wireValue;

  static ResourceDiscoveryMode fromValue(String value) {
    for (final item in ResourceDiscoveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceDiscoveryMode value: $value');
  }
}
