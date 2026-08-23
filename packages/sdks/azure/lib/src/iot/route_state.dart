// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Route resources.
class RouteState {
  /// The condition that is evaluated to apply the routing rule. For grammar, see: &lt;https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language&gt;. Defaults to `true`.
  final pulumi.Input<String>? condition;
  /// Specifies whether a route is enabled.
  final pulumi.Input<bool>? enabled;
  /// The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed.
  final pulumi.Input<String>? endpointNames;
  /// The name of the IoTHub to which this Route belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubName;
  /// The name of the route. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group under which the IotHub Route resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`.
  final pulumi.Input<String>? source;

  /// Creates a new [RouteState].
  /// [condition] The condition that is evaluated to apply the routing rule. For grammar, see: &lt;https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language&gt;. Defaults to `true`.
  /// [enabled] Specifies whether a route is enabled.
  /// [endpointNames] The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed.
  /// [iothubName] The name of the IoTHub to which this Route belongs. Changing this forces a new resource to be created.
  /// [name] The name of the route. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the IotHub Route resource has to be created. Changing this forces a new resource to be created.
  /// [source] The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`.
  const RouteState({
    this.condition,
    this.enabled,
    this.endpointNames,
    this.iothubName,
    this.name,
    this.resourceGroupName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'enabled': ?enabled,
      'endpointNames': ?endpointNames,
      'iothubName': ?iothubName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'source': ?source,
    };
  }

  factory RouteState.fromMap(Map<String, dynamic> map) {
    return RouteState(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointNames: (() { final guardedValue = map['endpointNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iothubName: (() { final guardedValue = map['iothubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
