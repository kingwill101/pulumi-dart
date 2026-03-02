// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mqtt_config_mqtt_enabled_state.dart';

/// The configuration of MQTT for a device registry.
class MqttConfig {
  /// If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.
  final pulumi.Input<MqttConfigMqttEnabledState>? mqttEnabledState;

  /// Creates a new [MqttConfig].
  /// [mqttEnabledState] If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.
  MqttConfig({
    this.mqttEnabledState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mqttEnabledState': ?pulumi.Input.mapOptionalInputValue<MqttConfigMqttEnabledState, String>(mqttEnabledState, (value) => value.value),
    };
  }

  factory MqttConfig.fromMap(Map<String, dynamic> map) {
    return MqttConfig(
      mqttEnabledState: map['mqttEnabledState'] == null ? null : (MqttConfigMqttEnabledState.fromValue(map['mqttEnabledState'] as String)).input(),
    );
  }
}

