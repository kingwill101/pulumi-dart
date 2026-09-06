import 'package:pulumi/pulumi.dart' as pulumi;

/// Emission destination type.
enum DestinationType implements pulumi.PulumiEnum<String> {
  azureMonitor("AzureMonitor");

  const DestinationType(this.wireValue);
  @override
  final String wireValue;

  static DestinationType fromValue(String value) {
    for (final item in DestinationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationType value: $value');
  }
}
