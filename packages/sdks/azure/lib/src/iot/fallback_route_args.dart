// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_fallback_route_fallback_route_args_doc}
/// The set of arguments for FallbackRoute.
/// {@endtemplate}
/// {@macro pulumi_iot_fallback_route_fallback_route_args_doc}
class FallbackRouteArgs {
  /// The condition that is evaluated to apply the routing rule. For grammar, see: &lt;https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language&gt;. Defaults to `true`.
  final pulumi.Input<String?>? condition;
  /// Used to specify whether the fallback route is enabled.
  final pulumi.Input<bool> enabled;
  /// The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
  final pulumi.Input<String> endpointNames;
  /// The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubName;
  /// The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. Defaults to `DeviceMessages`.
  final pulumi.Input<String?>? source;

  /// Creates a new [FallbackRouteArgs].
  /// [condition] The condition that is evaluated to apply the routing rule. For grammar, see: &lt;https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language&gt;. Defaults to `true`.
  /// [enabled] Used to specify whether the fallback route is enabled.
  /// [endpointNames] The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
  /// [iothubName] The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created.
  /// [source] The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. Defaults to `DeviceMessages`.
  const FallbackRouteArgs({
    this.condition,
    required this.enabled,
    required this.endpointNames,
    required this.iothubName,
    required this.resourceGroupName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'enabled': enabled,
      'endpointNames': endpointNames,
      'iothubName': iothubName,
      'resourceGroupName': resourceGroupName,
      'source': ?source,
    };
  }

  factory FallbackRouteArgs.fromMap(Map<String, dynamic> map) {
    return FallbackRouteArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      endpointNames: pulumi.Input.fromValue(map['endpointNames'] as String),
      iothubName: pulumi.Input.fromValue(map['iothubName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
