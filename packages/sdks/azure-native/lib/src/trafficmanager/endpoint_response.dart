// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_properties_custom_headers_item_response.dart';
import 'endpoint_properties_subnets_item_response.dart';

/// Class representing a Traffic Manager endpoint.
class EndpointResponse {
  /// If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method.
  final pulumi.Input<String>? alwaysServe;
  /// List of custom headers.
  final pulumi.Input<List<EndpointPropertiesCustomHeadersItemResponse>>? customHeaders;
  /// Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method.
  final pulumi.Input<String>? endpointLocation;
  /// The monitoring status of the endpoint.
  final pulumi.Input<String>? endpointMonitorStatus;
  /// The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method.
  final pulumi.Input<String>? endpointStatus;
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
  /// The list of subnets, IP addresses, and/or address ranges mapped to this endpoint when using the 'Subnet' traffic routing method. An empty list will match all ranges not covered by other endpoints.
  final pulumi.Input<List<EndpointPropertiesSubnetsItemResponse>>? subnets;
  /// The fully-qualified DNS name or IP address of the endpoint. Traffic Manager returns this value in DNS responses to direct traffic to this endpoint.
  final pulumi.Input<String>? target;
  /// The Azure Resource URI of the of the endpoint. Not applicable to endpoints of type 'ExternalEndpoints'.
  final pulumi.Input<String>? targetResourceId;
  /// The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  final pulumi.Input<String>? type;
  /// The weight of this endpoint when using the 'Weighted' traffic routing method. Possible values are from 1 to 1000.
  final pulumi.Input<double>? weight;

  /// Creates a new [EndpointResponse].
  /// [alwaysServe] If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method.
  /// [customHeaders] List of custom headers.
  /// [endpointLocation] Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method.
  /// [endpointMonitorStatus] The monitoring status of the endpoint.
  /// [endpointStatus] The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method.
  /// [geoMapping] The list of countries/regions mapped to this endpoint when using the 'Geographic' traffic routing method. Please consult Traffic Manager Geographic documentation for a full list of accepted values.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  /// [minChildEndpoints] The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  /// [minChildEndpointsIPv4] The minimum number of IPv4 (DNS record type A) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  /// [minChildEndpointsIPv6] The minimum number of IPv6 (DNS record type AAAA) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  /// [name] The name of the resource
  /// [priority] The priority of this endpoint when using the 'Priority' traffic routing method. Possible values are from 1 to 1000, lower values represent higher priority. This is an optional parameter.  If specified, it must be specified on all endpoints, and no two endpoints can share the same priority value.
  /// [subnets] The list of subnets, IP addresses, and/or address ranges mapped to this endpoint when using the 'Subnet' traffic routing method. An empty list will match all ranges not covered by other endpoints.
  /// [target] The fully-qualified DNS name or IP address of the endpoint. Traffic Manager returns this value in DNS responses to direct traffic to this endpoint.
  /// [targetResourceId] The Azure Resource URI of the of the endpoint. Not applicable to endpoints of type 'ExternalEndpoints'.
  /// [type] The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  /// [weight] The weight of this endpoint when using the 'Weighted' traffic routing method. Possible values are from 1 to 1000.
  EndpointResponse({
    this.alwaysServe,
    this.customHeaders,
    this.endpointLocation,
    this.endpointMonitorStatus,
    this.endpointStatus,
    this.geoMapping,
    this.id,
    this.minChildEndpoints,
    this.minChildEndpointsIPv4,
    this.minChildEndpointsIPv6,
    this.name,
    this.priority,
    this.subnets,
    this.target,
    this.targetResourceId,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysServe': ?alwaysServe,
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<EndpointPropertiesCustomHeadersItemResponse>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<EndpointPropertiesCustomHeadersItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointLocation': ?endpointLocation,
      'endpointMonitorStatus': ?endpointMonitorStatus,
      'endpointStatus': ?endpointStatus,
      'geoMapping': ?geoMapping,
      'id': ?id,
      'minChildEndpoints': ?minChildEndpoints,
      'minChildEndpointsIPv4': ?minChildEndpointsIPv4,
      'minChildEndpointsIPv6': ?minChildEndpointsIPv6,
      'name': ?name,
      'priority': ?priority,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<EndpointPropertiesSubnetsItemResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<EndpointPropertiesSubnetsItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'target': ?target,
      'targetResourceId': ?targetResourceId,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory EndpointResponse.fromMap(Map<String, dynamic> map) {
    return EndpointResponse(
      alwaysServe: map['alwaysServe'] == null ? null : (map['alwaysServe']! as String).input(),
      customHeaders: map['customHeaders'] == null ? null : (pulumi.Input.decodeList<EndpointPropertiesCustomHeadersItemResponse>(map['customHeaders']!, (value) => EndpointPropertiesCustomHeadersItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      endpointLocation: map['endpointLocation'] == null ? null : (map['endpointLocation']! as String).input(),
      endpointMonitorStatus: map['endpointMonitorStatus'] == null ? null : (map['endpointMonitorStatus']! as String).input(),
      endpointStatus: map['endpointStatus'] == null ? null : (map['endpointStatus']! as String).input(),
      geoMapping: map['geoMapping'] == null ? null : ((map['geoMapping']! as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      minChildEndpoints: map['minChildEndpoints'] == null ? null : (map['minChildEndpoints']! as double).input(),
      minChildEndpointsIPv4: map['minChildEndpointsIPv4'] == null ? null : (map['minChildEndpointsIPv4']! as double).input(),
      minChildEndpointsIPv6: map['minChildEndpointsIPv6'] == null ? null : (map['minChildEndpointsIPv6']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as double).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<EndpointPropertiesSubnetsItemResponse>(map['subnets']!, (value) => EndpointPropertiesSubnetsItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      weight: map['weight'] == null ? null : (map['weight']! as double).input(),
    );
  }
}

