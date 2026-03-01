/// If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.
enum MqttConfigMqttEnabledState {
  mqttStateUnspecified("MQTT_STATE_UNSPECIFIED"),
  mqttEnabled("MQTT_ENABLED"),
  mqttDisabled("MQTT_DISABLED");

  const MqttConfigMqttEnabledState(this.value);
  final String value;

  static MqttConfigMqttEnabledState fromValue(String value) {
    for (final item in MqttConfigMqttEnabledState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttConfigMqttEnabledState value: $value');
  }
}

