/// Identity Type.
enum KafkaConfigurationIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const KafkaConfigurationIdentityType(this.wireValue);
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

