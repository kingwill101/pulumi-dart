import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity Type.
enum KafkaConfigurationIdentityType implements pulumi.PulumiEnum<String> {
  none("None"),
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned");

  const KafkaConfigurationIdentityType(this.wireValue);
  @override
  final String wireValue;

  static KafkaConfigurationIdentityType fromValue(String value) {
    for (final item in KafkaConfigurationIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaConfigurationIdentityType value: $value');
  }
}
