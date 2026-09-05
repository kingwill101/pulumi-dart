// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IoTHubRoute {
  /// The condition that is evaluated to apply the routing rule. Defaults to `true`. For grammar, see: &lt;https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language&gt;.
  final pulumi.Input<String?>? condition;
  /// Used to specify whether a route is enabled.
  final pulumi.Input<bool> enabled;
  /// The list of endpoints to which messages that satisfy the condition are routed.
  final pulumi.Input<List<String>> endpointNames;
  /// The name of the route.
  final pulumi.Input<String> name;
  /// The source that the routing rule is to be applied to, such as `DeviceMessages`. Possible values include: `Invalid`, `DeviceMessages`, `TwinChangeEvents`, `DeviceLifecycleEvents`, `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents` and `DigitalTwinChangeEvents`.
  final pulumi.Input<String> source;

  /// Creates a new [IoTHubRoute].
  /// [condition] The condition that is evaluated to apply the routing rule. Defaults to `true`. For grammar, see: &lt;https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language&gt;.
  /// [enabled] Used to specify whether a route is enabled.
  /// [endpointNames] The list of endpoints to which messages that satisfy the condition are routed.
  /// [name] The name of the route.
  /// [source] The source that the routing rule is to be applied to, such as `DeviceMessages`. Possible values include: `Invalid`, `DeviceMessages`, `TwinChangeEvents`, `DeviceLifecycleEvents`, `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents` and `DigitalTwinChangeEvents`.
  const IoTHubRoute({
    this.condition,
    required this.enabled,
    required this.endpointNames,
    required this.name,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'enabled': enabled,
      'endpointNames': endpointNames,
      'name': name,
      'source': source,
    };
  }

  factory IoTHubRoute.fromMap(Map<String, dynamic> map) {
    return IoTHubRoute(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      endpointNames: pulumi.Input.fromValue((map['endpointNames'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
