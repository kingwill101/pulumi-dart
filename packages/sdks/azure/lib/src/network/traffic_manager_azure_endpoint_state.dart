// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_manager_azure_endpoint_custom_header.dart';
import 'traffic_manager_azure_endpoint_subnet.dart';

/// Input properties used for looking up and filtering TrafficManagerAzureEndpoint resources.
class TrafficManagerAzureEndpointState {
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
  final pulumi.Input<String>? profileId;
  /// One or more `subnet` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<TrafficManagerAzureEndpointSubnet>>? subnets;
  /// The ID of the Azure Resource which should be used as a target.
  final pulumi.Input<String>? targetResourceId;
  /// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. Defaults to `1`.
  final pulumi.Input<int>? weight;

  /// Creates a new [TrafficManagerAzureEndpointState].
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
  TrafficManagerAzureEndpointState({
    this.alwaysServeEnabled,
    this.customHeaders,
    this.enabled,
    this.geoMappings,
    this.name,
    this.priority,
    this.profileId,
    this.subnets,
    this.targetResourceId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysServeEnabled': ?alwaysServeEnabled,
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<TrafficManagerAzureEndpointCustomHeader>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<TrafficManagerAzureEndpointCustomHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'geoMappings': ?geoMappings,
      'name': ?name,
      'priority': ?priority,
      'profileId': ?profileId,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<TrafficManagerAzureEndpointSubnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<TrafficManagerAzureEndpointSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResourceId': ?targetResourceId,
      'weight': ?weight,
    };
  }

  factory TrafficManagerAzureEndpointState.fromMap(Map<String, dynamic> map) {
    return TrafficManagerAzureEndpointState(
      alwaysServeEnabled: (() { final guardedValue = map['alwaysServeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customHeaders: (() { final guardedValue = map['customHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficManagerAzureEndpointCustomHeader>(guardedValue, (value) => TrafficManagerAzureEndpointCustomHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      geoMappings: (() { final guardedValue = map['geoMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficManagerAzureEndpointSubnet>(guardedValue, (value) => TrafficManagerAzureEndpointSubnet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

