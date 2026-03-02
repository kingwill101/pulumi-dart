// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_rule_response.dart';

/// Result data returned by getRouteMap.
class GetRouteMapResult {
  /// List of connections which have this RoutMap associated for inbound traffic.
  final List<String>? associatedInboundConnections;
  /// List of connections which have this RoutMap associated for outbound traffic.
  final List<String>? associatedOutboundConnections;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String name;
  /// The provisioning state of the RouteMap resource.
  final String provisioningState;
  /// List of RouteMap rules to be applied.
  final List<RouteMapRuleResponse>? rules;
  /// Resource type.
  final String type;

  /// Creates a new [GetRouteMapResult].
  /// [associatedInboundConnections] List of connections which have this RoutMap associated for inbound traffic.
  /// [associatedOutboundConnections] List of connections which have this RoutMap associated for outbound traffic.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the RouteMap resource.
  /// [rules] List of RouteMap rules to be applied.
  /// [type] Resource type.
  GetRouteMapResult({
    this.associatedInboundConnections,
    this.associatedOutboundConnections,
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.rules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedInboundConnections': ?associatedInboundConnections,
      'associatedOutboundConnections': ?associatedOutboundConnections,
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<RouteMapRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetRouteMapResult.fromMap(Map<String, dynamic> map) {
    return GetRouteMapResult(
      associatedInboundConnections: map['associatedInboundConnections'] == null ? null : (map['associatedInboundConnections']! as List).cast<String>(),
      associatedOutboundConnections: map['associatedOutboundConnections'] == null ? null : (map['associatedOutboundConnections']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RouteMapRuleResponse>(map['rules']!, (value) => RouteMapRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

