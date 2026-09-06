import 'package:pulumi/pulumi.dart' as pulumi;

/// The target service type.
enum TargetServiceType implements pulumi.PulumiEnum<String> {
  valueAzureResource("AzureResource"),
  valueConfluentBootstrapServer("ConfluentBootstrapServer"),
  valueConfluentSchemaRegistry("ConfluentSchemaRegistry"),
  valueSelfHostedServer("SelfHostedServer");

  const TargetServiceType(this.wireValue);
  @override
  final String wireValue;

  static TargetServiceType fromValue(String value) {
    for (final item in TargetServiceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetServiceType value: $value');
  }
}
