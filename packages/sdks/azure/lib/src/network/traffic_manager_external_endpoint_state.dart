// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_manager_external_endpoint_custom_header.dart';
import 'traffic_manager_external_endpoint_subnet.dart';

/// Input properties used for looking up and filtering TrafficManagerExternalEndpoint resources.
class TrafficManagerExternalEndpointState {
  /// If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method. Defaults to `false`.
  final pulumi.Input<bool>? alwaysServeEnabled;
  /// One or more `custom_header` blocks as defined below.
  final pulumi.Input<List<TrafficManagerExternalEndpointCustomHeader>>? customHeaders;
  /// Is the endpoint enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the Azure location of the Endpoint, this must be specified for Profiles using the `Performance` routing method.
  final pulumi.Input<String>? endpointLocation;
  /// A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault).
  final pulumi.Input<List<String>>? geoMappings;
  /// The name of the External Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
  final pulumi.Input<int>? priority;
  /// The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? profileId;
  /// One or more `subnet` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<TrafficManagerExternalEndpointSubnet>>? subnets;
  /// The FQDN DNS name of the target.
  final pulumi.Input<String>? target;
  /// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. Defaults to `1`.
  final pulumi.Input<int>? weight;

  /// Creates a new [TrafficManagerExternalEndpointState].
  /// [alwaysServeEnabled] If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method. Defaults to `false`.
  /// [customHeaders] One or more `custom_header` blocks as defined below.
  /// [enabled] Is the endpoint enabled? Defaults to `true`.
  /// [endpointLocation] Specifies the Azure location of the Endpoint, this must be specified for Profiles using the `Performance` routing method.
  /// [geoMappings] A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault).
  /// [name] The name of the External Endpoint. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
  /// [profileId] The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created.
  /// [subnets] One or more `subnet` blocks as defined below. Changing this forces a new resource to be created.
  /// [target] The FQDN DNS name of the target.
  /// [weight] Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. Defaults to `1`.
  TrafficManagerExternalEndpointState({
    pulumi.Output<bool>? alwaysServeEnabled,
    pulumi.Output<List<TrafficManagerExternalEndpointCustomHeader>>? customHeaders,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? endpointLocation,
    pulumi.Output<List<String>>? geoMappings,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? profileId,
    pulumi.Output<List<TrafficManagerExternalEndpointSubnet>>? subnets,
    pulumi.Output<String>? target,
    pulumi.Output<int>? weight,
  }) :
      alwaysServeEnabled = pulumi.Input.asOptionalInput<bool>(alwaysServeEnabled),
      customHeaders = pulumi.Input.asOptionalInput<List<TrafficManagerExternalEndpointCustomHeader>>(customHeaders),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      endpointLocation = pulumi.Input.asOptionalInput<String>(endpointLocation),
      geoMappings = pulumi.Input.asOptionalInput<List<String>>(geoMappings),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      profileId = pulumi.Input.asOptionalInput<String>(profileId),
      subnets = pulumi.Input.asOptionalInput<List<TrafficManagerExternalEndpointSubnet>>(subnets),
      target = pulumi.Input.asOptionalInput<String>(target),
      weight = pulumi.Input.asOptionalInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysServeEnabled': ?alwaysServeEnabled,
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<TrafficManagerExternalEndpointCustomHeader>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<TrafficManagerExternalEndpointCustomHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'endpointLocation': ?endpointLocation,
      'geoMappings': ?geoMappings,
      'name': ?name,
      'priority': ?priority,
      'profileId': ?profileId,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<TrafficManagerExternalEndpointSubnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<TrafficManagerExternalEndpointSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'target': ?target,
      'weight': ?weight,
    };
  }

  factory TrafficManagerExternalEndpointState.fromMap(Map<String, dynamic> map) {
    return TrafficManagerExternalEndpointState(
      alwaysServeEnabled: map['alwaysServeEnabled'] == null ? null : pulumi.Output.create<bool>(map['alwaysServeEnabled'] as bool),
      customHeaders: map['customHeaders'] == null ? null : pulumi.Output.create<List<TrafficManagerExternalEndpointCustomHeader>>(pulumi.Input.decodeList<TrafficManagerExternalEndpointCustomHeader>(map['customHeaders'], (value) => TrafficManagerExternalEndpointCustomHeader.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      endpointLocation: map['endpointLocation'] == null ? null : pulumi.Output.create<String>(map['endpointLocation'] as String),
      geoMappings: map['geoMappings'] == null ? null : pulumi.Output.create<List<String>>((map['geoMappings'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      profileId: map['profileId'] == null ? null : pulumi.Output.create<String>(map['profileId'] as String),
      subnets: map['subnets'] == null ? null : pulumi.Output.create<List<TrafficManagerExternalEndpointSubnet>>(pulumi.Input.decodeList<TrafficManagerExternalEndpointSubnet>(map['subnets'], (value) => TrafficManagerExternalEndpointSubnet.fromMap((value as Map).cast<String, dynamic>()))),
      target: map['target'] == null ? null : pulumi.Output.create<String>(map['target'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

