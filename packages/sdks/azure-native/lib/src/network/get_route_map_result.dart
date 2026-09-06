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
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the RouteMap resource.
  final String? provisioningState;
  /// List of RouteMap rules to be applied.
  final List<RouteMapRuleResponse>? rules;
  /// Resource type.
  final String? type;

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
  const GetRouteMapResult({
    this.associatedInboundConnections,
    this.associatedOutboundConnections,
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.provisioningState,
    this.rules,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedInboundConnections': ?associatedInboundConnections,
      'associatedOutboundConnections': ?associatedOutboundConnections,
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<RouteMapRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetRouteMapResult.fromMap(Map<String, dynamic> map) {
    return GetRouteMapResult(
      associatedInboundConnections: (() { final guardedValue = map['associatedInboundConnections']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      associatedOutboundConnections: (() { final guardedValue = map['associatedOutboundConnections']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteMapRuleResponse>(guardedValue, (value) => RouteMapRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
