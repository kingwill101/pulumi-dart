// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_manager_nested_endpoint_custom_header.dart';
import 'traffic_manager_nested_endpoint_subnet.dart';

/// {@template pulumi_network_traffic_manager_nested_endpoint_traffic_manager_nested_endpoint_args_doc}
/// The set of arguments for TrafficManagerNestedEndpoint.
/// {@endtemplate}
/// {@macro pulumi_network_traffic_manager_nested_endpoint_traffic_manager_nested_endpoint_args_doc}
class TrafficManagerNestedEndpointArgs {
  /// One or more `custom_header` blocks as defined below.
  final pulumi.Input<List<TrafficManagerNestedEndpointCustomHeader>>?
  customHeaders;

  /// Is the endpoint enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Specifies the Azure location of the Endpoint, this must be specified for Profiles using the `Performance` routing method.
  final pulumi.Input<String>? endpointLocation;

  /// A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault).
  final pulumi.Input<List<String>>? geoMappings;

  /// This argument specifies the minimum number of endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This value must be larger than `0`.
  ///
  /// &gt; **Note:** If `min_child_endpoints` is less than either `minimum_required_child_endpoints_ipv4` or `minimum_required_child_endpoints_ipv6`, then it won't have any effect.
  final pulumi.Input<int> minimumChildEndpoints;

  /// This argument specifies the minimum number of IPv4 (DNS record type A) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and
  final pulumi.Input<int>? minimumRequiredChildEndpointsIpv4;

  /// This argument specifies the minimum number of IPv6 (DNS record type AAAA) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and
  final pulumi.Input<int>? minimumRequiredChildEndpointsIpv6;

  /// The name of the External Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
  final pulumi.Input<int>? priority;

  /// The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created.
  final pulumi.Input<String> profileId;

  /// One or more `subnet` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<TrafficManagerNestedEndpointSubnet>>? subnets;

  /// The resource id of an Azure resource to target.
  final pulumi.Input<String> targetResourceId;

  /// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. Defaults to `1`.
  final pulumi.Input<int>? weight;

  /// Creates a new [TrafficManagerNestedEndpointArgs].
  /// [customHeaders] One or more `custom_header` blocks as defined below.
  /// [enabled] Is the endpoint enabled? Defaults to `true`.
  /// [endpointLocation] Specifies the Azure location of the Endpoint, this must be specified for Profiles using the `Performance` routing method.
  /// [geoMappings] A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault).
  /// [minimumChildEndpoints] This argument specifies the minimum number of endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This value must be larger than `0`.
  /// [minimumRequiredChildEndpointsIpv4] This argument specifies the minimum number of IPv4 (DNS record type A) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and
  /// [minimumRequiredChildEndpointsIpv6] This argument specifies the minimum number of IPv6 (DNS record type AAAA) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and
  /// [name] The name of the External Endpoint. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
  /// [profileId] The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created.
  /// [subnets] One or more `subnet` blocks as defined below. Changing this forces a new resource to be created.
  /// [targetResourceId] The resource id of an Azure resource to target.
  /// [weight] Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. Defaults to `1`.
  TrafficManagerNestedEndpointArgs({
    this.customHeaders,
    this.enabled,
    this.endpointLocation,
    this.geoMappings,
    required this.minimumChildEndpoints,
    this.minimumRequiredChildEndpointsIpv4,
    this.minimumRequiredChildEndpointsIpv6,
    this.name,
    this.priority,
    required this.profileId,
    this.subnets,
    required this.targetResourceId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<TrafficManagerNestedEndpointCustomHeader>,
            List<Map<String, dynamic>>
          >(
            customHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  TrafficManagerNestedEndpointCustomHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabled': ?enabled,
      'endpointLocation': ?endpointLocation,
      'geoMappings': ?geoMappings,
      'minimumChildEndpoints': minimumChildEndpoints,
      'minimumRequiredChildEndpointsIpv4': ?minimumRequiredChildEndpointsIpv4,
      'minimumRequiredChildEndpointsIpv6': ?minimumRequiredChildEndpointsIpv6,
      'name': ?name,
      'priority': ?priority,
      'profileId': profileId,
      'subnets':
          ?pulumi.Input.mapOptionalInputValue<
            List<TrafficManagerNestedEndpointSubnet>,
            List<Map<String, dynamic>>
          >(
            subnets,
            (value) =>
                pulumi.Input.encodeList<
                  TrafficManagerNestedEndpointSubnet,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetResourceId': targetResourceId,
      'weight': ?weight,
    };
  }

  factory TrafficManagerNestedEndpointArgs.fromMap(Map<String, dynamic> map) {
    return TrafficManagerNestedEndpointArgs(
      customHeaders: (() {
        final guardedValue = map['customHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TrafficManagerNestedEndpointCustomHeader>(
            guardedValue,
            (value) => TrafficManagerNestedEndpointCustomHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      endpointLocation: (() {
        final guardedValue = map['endpointLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      geoMappings: (() {
        final guardedValue = map['geoMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      minimumChildEndpoints: pulumi.Input.fromValue(
        map['minimumChildEndpoints'] as int,
      ),
      minimumRequiredChildEndpointsIpv4: (() {
        final guardedValue = map['minimumRequiredChildEndpointsIpv4'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumRequiredChildEndpointsIpv6: (() {
        final guardedValue = map['minimumRequiredChildEndpointsIpv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
      subnets: (() {
        final guardedValue = map['subnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TrafficManagerNestedEndpointSubnet>(
            guardedValue,
            (value) => TrafficManagerNestedEndpointSubnet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      targetResourceId: pulumi.Input.fromValue(
        map['targetResourceId'] as String,
      ),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
