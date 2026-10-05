import 'package:pulumi/pulumi.dart' as pulumi;

/// If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.
enum MqttConfigMqttEnabledState implements pulumi.PulumiEnum<String> {
  mqttStateUnspecified("MQTT_STATE_UNSPECIFIED"),
  mqttEnabled("MQTT_ENABLED"),
  mqttDisabled("MQTT_DISABLED");

  const MqttConfigMqttEnabledState(this.wireValue);
  @override
  final String wireValue;

  static MqttConfigMqttEnabledState fromValue(String value) {
    for (final item in MqttConfigMqttEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttConfigMqttEnabledState value: $value');
  }
}
