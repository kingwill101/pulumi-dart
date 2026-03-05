// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of MQTT for a device registry.
class MqttConfigResponse {
  /// If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.
  final pulumi.Input<String> mqttEnabledState;

  /// Creates a new [MqttConfigResponse].
  /// [mqttEnabledState] If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.
  MqttConfigResponse({
    required this.mqttEnabledState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mqttEnabledState': mqttEnabledState,
    };
  }

  factory MqttConfigResponse.fromMap(Map<String, dynamic> map) {
    return MqttConfigResponse(
      mqttEnabledState: pulumi.Input.fromValue(map['mqttEnabledState'] as String),
    );
  }
}

