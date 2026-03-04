// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_properties_custom_headers_item_response.dart';
import 'endpoint_properties_subnets_item_response.dart';

/// Result data returned by getEndpoint.
class GetEndpointResult {
  /// If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method.
  final String? alwaysServe;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// List of custom headers.
  final List<EndpointPropertiesCustomHeadersItemResponse>? customHeaders;

  /// Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method.
  final String? endpointLocation;

  /// The monitoring status of the endpoint.
  final String? endpointMonitorStatus;

  /// The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method.
  final String? endpointStatus;

  /// The list of countries/regions mapped to this endpoint when using the 'Geographic' traffic routing method. Please consult Traffic Manager Geographic documentation for a full list of accepted values.
  final List<String>? geoMapping;

  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}
  final String? id;

  /// The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  final double? minChildEndpoints;

  /// The minimum number of IPv4 (DNS record type A) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  final double? minChildEndpointsIPv4;

  /// The minimum number of IPv6 (DNS record type AAAA) endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'.
  final double? minChildEndpointsIPv6;

  /// The name of the resource
  final String? name;

  /// The priority of this endpoint when using the 'Priority' traffic routing method. Possible values are from 1 to 1000, lower values represent higher priority. This is an optional parameter.  If specified, it must be specified on all endpoints, and no two endpoints can share the same priority value.
  final double? priority;

  /// The list of subnets, IP addresses, and/or address ranges mapped to this endpoint when using the 'Subnet' traffic routing method. An empty list will match all ranges not covered by other endpoints.
  final List<EndpointPropertiesSubnetsItemResponse>? subnets;

  /// The fully-qualified DNS name or IP address of the endpoint. Traffic Manager returns this value in DNS responses to direct traffic to this endpoint.
  final String? target;

  /// The Azure Resource URI of the of the endpoint. Not applicable to endpoints of type 'ExternalEndpoints'.
  final String? targetResourceId;

  /// The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles.
  final String? type;

  /// The weight of this endpoint when using the 'Weighted' traffic routing method. Possible values are from 1 to 1000.
  final double? weight;

  /// Creates a new [GetEndpointResult].
  /// [alwaysServe] If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method.
  /// [azureApiVersion] The Azure API version of the resource.
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
  GetEndpointResult({
    this.alwaysServe,
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'customHeaders': ?(() {
        final guardedValue = customHeaders;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          EndpointPropertiesCustomHeadersItemResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
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
      'subnets': ?(() {
        final guardedValue = subnets;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          EndpointPropertiesSubnetsItemResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'target': ?target,
      'targetResourceId': ?targetResourceId,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      alwaysServe: (() {
        final guardedValue = map['alwaysServe'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      customHeaders: (() {
        final guardedValue = map['customHeaders'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<EndpointPropertiesCustomHeadersItemResponse>(
          guardedValue,
          (value) => EndpointPropertiesCustomHeadersItemResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      endpointLocation: (() {
        final guardedValue = map['endpointLocation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      endpointMonitorStatus: (() {
        final guardedValue = map['endpointMonitorStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      endpointStatus: (() {
        final guardedValue = map['endpointStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      geoMapping: (() {
        final guardedValue = map['geoMapping'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      minChildEndpoints: (() {
        final guardedValue = map['minChildEndpoints'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      minChildEndpointsIPv4: (() {
        final guardedValue = map['minChildEndpointsIPv4'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      minChildEndpointsIPv6: (() {
        final guardedValue = map['minChildEndpointsIPv6'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
      subnets: (() {
        final guardedValue = map['subnets'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<EndpointPropertiesSubnetsItemResponse>(
          guardedValue,
          (value) => EndpointPropertiesSubnetsItemResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      targetResourceId: (() {
        final guardedValue = map['targetResourceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return guardedValue as double;
      })(),
    );
  }
}
