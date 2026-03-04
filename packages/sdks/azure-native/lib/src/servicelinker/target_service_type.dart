/// The target service type.
enum TargetServiceType {
  valueAzureResource("AzureResource"),
  valueConfluentBootstrapServer("ConfluentBootstrapServer"),
  valueConfluentSchemaRegistry("ConfluentSchemaRegistry"),
  valueSelfHostedServer("SelfHostedServer");

  const TargetServiceType(this.wireValue);
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
