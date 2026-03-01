// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FallbackRoute resources.
class FallbackRouteState {
  /// The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`.
  final pulumi.Input<String>? condition;
  /// Used to specify whether the fallback route is enabled.
  final pulumi.Input<bool>? enabled;
  /// The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
  final pulumi.Input<String>? endpointNames;
  /// The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubName;
  /// The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. Defaults to `DeviceMessages`.
  final pulumi.Input<String>? source;

  /// Creates a new [FallbackRouteState].
  /// [condition] The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`.
  /// [enabled] Used to specify whether the fallback route is enabled.
  /// [endpointNames] The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
  /// [iothubName] The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created.
  /// [source] The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. Defaults to `DeviceMessages`.
  FallbackRouteState({
    pulumi.Output<String>? condition,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? endpointNames,
    pulumi.Output<String>? iothubName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? source,
  }) :
      condition = pulumi.Input.asOptionalInput<String>(condition),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      endpointNames = pulumi.Input.asOptionalInput<String>(endpointNames),
      iothubName = pulumi.Input.asOptionalInput<String>(iothubName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      source = pulumi.Input.asOptionalInput<String>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'enabled': ?enabled,
      'endpointNames': ?endpointNames,
      'iothubName': ?iothubName,
      'resourceGroupName': ?resourceGroupName,
      'source': ?source,
    };
  }

  factory FallbackRouteState.fromMap(Map<String, dynamic> map) {
    return FallbackRouteState(
      condition: map['condition'] == null ? null : pulumi.Output.create<String>(map['condition'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      endpointNames: map['endpointNames'] == null ? null : pulumi.Output.create<String>(map['endpointNames'] as String),
      iothubName: map['iothubName'] == null ? null : pulumi.Output.create<String>(map['iothubName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

