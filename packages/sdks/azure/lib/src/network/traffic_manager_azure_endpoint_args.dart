// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_manager_azure_endpoint_custom_header.dart';
import 'traffic_manager_azure_endpoint_subnet.dart';

/// {@template pulumi_network_traffic_manager_azure_endpoint_traffic_manager_azure_endpoint_args_doc}
/// The set of arguments for TrafficManagerAzureEndpoint.
/// {@endtemplate}
/// {@macro pulumi_network_traffic_manager_azure_endpoint_traffic_manager_azure_endpoint_args_doc}
class TrafficManagerAzureEndpointArgs {
  /// If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method. Defaults to `false`.
  final pulumi.Input<bool>? alwaysServeEnabled;
  /// One or more `custom_header` blocks as defined below.
  final pulumi.Input<List<TrafficManagerAzureEndpointCustomHeader>>? customHeaders;
  /// Is the endpoint enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault).
  final pulumi.Input<List<String>>? geoMappings;
  /// The name of the Azure Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
  final pulumi.Input<int>? priority;
  /// The ID of the Traffic Manager Profile that this Azure Endpoint should be created within. Changing this forces a new resource to be created.
  final pulumi.Input<String> profileId;
  /// One or more `subnet` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<TrafficManagerAzureEndpointSubnet>>? subnets;
  /// The ID of the Azure Resource which should be used as a target.
  final pulumi.Input<String> targetResourceId;
  /// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. Defaults to `1`.
  final pulumi.Input<int>? weight;

  /// Creates a new [TrafficManagerAzureEndpointArgs].
  /// [alwaysServeEnabled] If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method. Defaults to `false`.
  /// [customHeaders] One or more `custom_header` blocks as defined below.
  /// [enabled] Is the endpoint enabled? Defaults to `true`.
  /// [geoMappings] A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault).
  /// [name] The name of the Azure Endpoint. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
  /// [profileId] The ID of the Traffic Manager Profile that this Azure Endpoint should be created within. Changing this forces a new resource to be created.
  /// [subnets] One or more `subnet` blocks as defined below. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Azure Resource which should be used as a target.
  /// [weight] Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. Defaults to `1`.
  TrafficManagerAzureEndpointArgs({
    pulumi.Output<bool>? alwaysServeEnabled,
    pulumi.Output<List<TrafficManagerAzureEndpointCustomHeader>>? customHeaders,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<String>>? geoMappings,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    required pulumi.Output<String> profileId,
    pulumi.Output<List<TrafficManagerAzureEndpointSubnet>>? subnets,
    required pulumi.Output<String> targetResourceId,
    pulumi.Output<int>? weight,
  }) :
      alwaysServeEnabled = pulumi.Input.asOptionalInput<bool>(alwaysServeEnabled),
      customHeaders = pulumi.Input.asOptionalInput<List<TrafficManagerAzureEndpointCustomHeader>>(customHeaders),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      geoMappings = pulumi.Input.asOptionalInput<List<String>>(geoMappings),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      profileId = pulumi.Input.asInput<String>(profileId),
      subnets = pulumi.Input.asOptionalInput<List<TrafficManagerAzureEndpointSubnet>>(subnets),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId),
      weight = pulumi.Input.asOptionalInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysServeEnabled': ?alwaysServeEnabled,
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<TrafficManagerAzureEndpointCustomHeader>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<TrafficManagerAzureEndpointCustomHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'geoMappings': ?geoMappings,
      'name': ?name,
      'priority': ?priority,
      'profileId': profileId,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<TrafficManagerAzureEndpointSubnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<TrafficManagerAzureEndpointSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResourceId': targetResourceId,
      'weight': ?weight,
    };
  }

  factory TrafficManagerAzureEndpointArgs.fromMap(Map<String, dynamic> map) {
    return TrafficManagerAzureEndpointArgs(
      alwaysServeEnabled: map['alwaysServeEnabled'] == null ? null : pulumi.Output.create<bool>(map['alwaysServeEnabled'] as bool),
      customHeaders: map['customHeaders'] == null ? null : pulumi.Output.create<List<TrafficManagerAzureEndpointCustomHeader>>(pulumi.Input.decodeList<TrafficManagerAzureEndpointCustomHeader>(map['customHeaders'], (value) => TrafficManagerAzureEndpointCustomHeader.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      geoMappings: map['geoMappings'] == null ? null : pulumi.Output.create<List<String>>((map['geoMappings'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      profileId: pulumi.Output.create<String>(map['profileId'] as String),
      subnets: map['subnets'] == null ? null : pulumi.Output.create<List<TrafficManagerAzureEndpointSubnet>>(pulumi.Input.decodeList<TrafficManagerAzureEndpointSubnet>(map['subnets'], (value) => TrafficManagerAzureEndpointSubnet.fromMap((value as Map).cast<String, dynamic>()))),
      targetResourceId: pulumi.Output.create<String>(map['targetResourceId'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

