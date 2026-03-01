// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_properties_custom_headers_item.dart';
import 'endpoint_properties_subnets_item.dart';

/// {@template pulumi_trafficmanager_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_trafficmanager_endpoint_args_doc}
class EndpointArgs {
  /// If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method.
  final pulumi.Input<String>? alwaysServe;
  /// List of custom headers.
  final pulumi.Input<List<EndpointPropertiesCustomHeadersItem>>? customHeaders;
  /// Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method.
  final pulumi.Input<String>? endpointLocation;
  /// The monitoring status of the endpoint.
  final pulumi.Input<String>? endpointMonitorStatus;
  /// The name of the Traffic Manager endpoint.
  final pulumi.Input<String>? endpointName;
  /// The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method.
  final pulumi.Input<String>? endpointStatus;
  /// The type of the Traffic Manager endpoint.
  final pulumi.Input<String> endpointType;
  /// The list of countries/regions mapped to this endpoint when using the 'Geographic' traffic routing method. Please consult Traffic Manager Geographic documentation for a full list of accepted values.
  final pulumi.Input<List<String>>? geoMapping;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  final pulumi.Input<String>? id;
  /// The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  final pulumi.Input<double>? minChildEndpoints;
  /// The minimum number of IPv4 (DNS record type A) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  final pulumi.Input<double>? minChildEndpointsIPv4;
  /// The minimum number of IPv6 (DNS record type AAAA) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  final pulumi.Input<double>? minChildEndpointsIPv6;
  /// The name of the resource
  final pulumi.Input<String>? name;
  /// The priority of this endpoint when using the 'Priority' traffic routing method. Possible values are from 1 to 1000, lower values represent higher priority. This is an optional parameter.  If specified, it must be specified on all endpoints, and no two endpoints can share the same priority value.
  final pulumi.Input<double>? priority;
  /// The name of the Traffic Manager profile.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The list of subnets, IP addresses, and/or address ranges mapped to this endpoint when using the 'Subnet' traffic routing method. An empty list will match all ranges not covered by other endpoints.
  final pulumi.Input<List<EndpointPropertiesSubnetsItem>>? subnets;
  /// The fully-qualified DNS name or IP address of the endpoint. Traffic Manager returns this value in DNS responses to direct traffic to this endpoint.
  final pulumi.Input<String>? target;
  /// The Azure Resource URI of the of the endpoint. Not applicable to endpoints of type 'ExternalEndpoints'.
  final pulumi.Input<String>? targetResourceId;
  /// The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  final pulumi.Input<String>? type;
  /// The weight of this endpoint when using the 'Weighted' traffic routing method. Possible values are from 1 to 1000.
  final pulumi.Input<double>? weight;

  /// Creates a new [EndpointArgs].
  /// [alwaysServe] If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method.
  /// [customHeaders] List of custom headers.
  /// [endpointLocation] Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method.
  /// [endpointMonitorStatus] The monitoring status of the endpoint.
  /// [endpointName] The name of the Traffic Manager endpoint.
  /// [endpointStatus] The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method.
  /// [endpointType] The type of the Traffic Manager endpoint.
  /// [geoMapping] The list of countries/regions mapped to this endpoint when using the 'Geographic' traffic routing method. Please consult Traffic Manager Geographic documentation for a full list of accepted values.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  /// [minChildEndpoints] The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  /// [minChildEndpointsIPv4] The minimum number of IPv4 (DNS record type A) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  /// [minChildEndpointsIPv6] The minimum number of IPv6 (DNS record type AAAA) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  /// [name] The name of the resource
  /// [priority] The priority of this endpoint when using the 'Priority' traffic routing method. Possible values are from 1 to 1000, lower values represent higher priority. This is an optional parameter.  If specified, it must be specified on all endpoints, and no two endpoints can share the same priority value.
  /// [profileName] The name of the Traffic Manager profile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnets] The list of subnets, IP addresses, and/or address ranges mapped to this endpoint when using the 'Subnet' traffic routing method. An empty list will match all ranges not covered by other endpoints.
  /// [target] The fully-qualified DNS name or IP address of the endpoint. Traffic Manager returns this value in DNS responses to direct traffic to this endpoint.
  /// [targetResourceId] The Azure Resource URI of the of the endpoint. Not applicable to endpoints of type 'ExternalEndpoints'.
  /// [type] The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  /// [weight] The weight of this endpoint when using the 'Weighted' traffic routing method. Possible values are from 1 to 1000.
  EndpointArgs({
    pulumi.Output<String>? alwaysServe,
    pulumi.Output<List<EndpointPropertiesCustomHeadersItem>>? customHeaders,
    pulumi.Output<String>? endpointLocation,
    pulumi.Output<String>? endpointMonitorStatus,
    pulumi.Output<String>? endpointName,
    pulumi.Output<String>? endpointStatus,
    required pulumi.Output<String> endpointType,
    pulumi.Output<List<String>>? geoMapping,
    pulumi.Output<String>? id,
    pulumi.Output<double>? minChildEndpoints,
    pulumi.Output<double>? minChildEndpointsIPv4,
    pulumi.Output<double>? minChildEndpointsIPv6,
    pulumi.Output<String>? name,
    pulumi.Output<double>? priority,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<EndpointPropertiesSubnetsItem>>? subnets,
    pulumi.Output<String>? target,
    pulumi.Output<String>? targetResourceId,
    pulumi.Output<String>? type,
    pulumi.Output<double>? weight,
  }) :
      alwaysServe = pulumi.Input.asOptionalInput<String>(alwaysServe),
      customHeaders = pulumi.Input.asOptionalInput<List<EndpointPropertiesCustomHeadersItem>>(customHeaders),
      endpointLocation = pulumi.Input.asOptionalInput<String>(endpointLocation),
      endpointMonitorStatus = pulumi.Input.asOptionalInput<String>(endpointMonitorStatus),
      endpointName = pulumi.Input.asOptionalInput<String>(endpointName),
      endpointStatus = pulumi.Input.asOptionalInput<String>(endpointStatus),
      endpointType = pulumi.Input.asInput<String>(endpointType),
      geoMapping = pulumi.Input.asOptionalInput<List<String>>(geoMapping),
      id = pulumi.Input.asOptionalInput<String>(id),
      minChildEndpoints = pulumi.Input.asOptionalInput<double>(minChildEndpoints),
      minChildEndpointsIPv4 = pulumi.Input.asOptionalInput<double>(minChildEndpointsIPv4),
      minChildEndpointsIPv6 = pulumi.Input.asOptionalInput<double>(minChildEndpointsIPv6),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<double>(priority),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnets = pulumi.Input.asOptionalInput<List<EndpointPropertiesSubnetsItem>>(subnets),
      target = pulumi.Input.asOptionalInput<String>(target),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId),
      type = pulumi.Input.asOptionalInput<String>(type),
      weight = pulumi.Input.asOptionalInput<double>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysServe': ?alwaysServe,
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<EndpointPropertiesCustomHeadersItem>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<EndpointPropertiesCustomHeadersItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointLocation': ?endpointLocation,
      'endpointMonitorStatus': ?endpointMonitorStatus,
      'endpointName': ?endpointName,
      'endpointStatus': ?endpointStatus,
      'endpointType': endpointType,
      'geoMapping': ?geoMapping,
      'id': ?id,
      'minChildEndpoints': ?minChildEndpoints,
      'minChildEndpointsIPv4': ?minChildEndpointsIPv4,
      'minChildEndpointsIPv6': ?minChildEndpointsIPv6,
      'name': ?name,
      'priority': ?priority,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<EndpointPropertiesSubnetsItem>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<EndpointPropertiesSubnetsItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'target': ?target,
      'targetResourceId': ?targetResourceId,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      alwaysServe: map['alwaysServe'] == null ? null : pulumi.Output.create<String>(map['alwaysServe'] as String),
      customHeaders: map['customHeaders'] == null ? null : pulumi.Output.create<List<EndpointPropertiesCustomHeadersItem>>(pulumi.Input.decodeList<EndpointPropertiesCustomHeadersItem>(map['customHeaders'], (value) => EndpointPropertiesCustomHeadersItem.fromMap((value as Map).cast<String, dynamic>()))),
      endpointLocation: map['endpointLocation'] == null ? null : pulumi.Output.create<String>(map['endpointLocation'] as String),
      endpointMonitorStatus: map['endpointMonitorStatus'] == null ? null : pulumi.Output.create<String>(map['endpointMonitorStatus'] as String),
      endpointName: map['endpointName'] == null ? null : pulumi.Output.create<String>(map['endpointName'] as String),
      endpointStatus: map['endpointStatus'] == null ? null : pulumi.Output.create<String>(map['endpointStatus'] as String),
      endpointType: pulumi.Output.create<String>(map['endpointType'] as String),
      geoMapping: map['geoMapping'] == null ? null : pulumi.Output.create<List<String>>((map['geoMapping'] as List).cast<String>()),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      minChildEndpoints: map['minChildEndpoints'] == null ? null : pulumi.Output.create<double>(map['minChildEndpoints'] as double),
      minChildEndpointsIPv4: map['minChildEndpointsIPv4'] == null ? null : pulumi.Output.create<double>(map['minChildEndpointsIPv4'] as double),
      minChildEndpointsIPv6: map['minChildEndpointsIPv6'] == null ? null : pulumi.Output.create<double>(map['minChildEndpointsIPv6'] as double),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<double>(map['priority'] as double),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnets: map['subnets'] == null ? null : pulumi.Output.create<List<EndpointPropertiesSubnetsItem>>(pulumi.Input.decodeList<EndpointPropertiesSubnetsItem>(map['subnets'], (value) => EndpointPropertiesSubnetsItem.fromMap((value as Map).cast<String, dynamic>()))),
      target: map['target'] == null ? null : pulumi.Output.create<String>(map['target'] as String),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<double>(map['weight'] as double),
    );
  }
}

