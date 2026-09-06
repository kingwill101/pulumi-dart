import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure resource type.
enum AzureResourceType implements pulumi.PulumiEnum<String> {
  valueWebsite("Website"),
  valueTrafficManager("TrafficManager");

  const AzureResourceType(this.wireValue);
  @override
  final String wireValue;

  static AzureResourceType fromValue(String value) {
    for (final item in AzureResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureResourceType value: $value');
  }
}
