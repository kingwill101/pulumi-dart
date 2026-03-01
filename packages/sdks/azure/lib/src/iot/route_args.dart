// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_iot_route_route_args_doc}
class RouteArgs {
  /// The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`.
  final pulumi.Input<String>? condition;
  /// Specifies whether a route is enabled.
  final pulumi.Input<bool> enabled;
  /// The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed.
  final pulumi.Input<String> endpointNames;
  /// The name of the IoTHub to which this Route belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubName;
  /// The name of the route. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group under which the IotHub Route resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`.
  final pulumi.Input<String> source;

  /// Creates a new [RouteArgs].
  /// [condition] The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`.
  /// [enabled] Specifies whether a route is enabled.
  /// [endpointNames] The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed.
  /// [iothubName] The name of the IoTHub to which this Route belongs. Changing this forces a new resource to be created.
  /// [name] The name of the route. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the IotHub Route resource has to be created. Changing this forces a new resource to be created.
  /// [source] The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`.
  RouteArgs({
    pulumi.Output<String>? condition,
    required pulumi.Output<bool> enabled,
    required pulumi.Output<String> endpointNames,
    required pulumi.Output<String> iothubName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> source,
  }) :
      condition = pulumi.Input.asOptionalInput<String>(condition),
      enabled = pulumi.Input.asInput<bool>(enabled),
      endpointNames = pulumi.Input.asInput<String>(endpointNames),
      iothubName = pulumi.Input.asInput<String>(iothubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asInput<String>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'enabled': enabled,
      'endpointNames': endpointNames,
      'iothubName': iothubName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'source': source,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<String>(map['condition'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      endpointNames: pulumi.Output.create<String>(map['endpointNames'] as String),
      iothubName: pulumi.Output.create<String>(map['iothubName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      source: pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

