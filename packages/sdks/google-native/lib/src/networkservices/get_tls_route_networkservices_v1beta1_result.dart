// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_rule_response_networkservices_v1beta1.dart';

/// Result data returned by getTlsRoute.
class GetTlsRouteNetworkservicesV1beta1Result {
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String? description;
  /// Optional. Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final List<String>? gateways;
  /// Optional. Set of label tags associated with the TlsRoute resource.
  final Map<String, String>? labels;
  /// Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final List<String>? meshes;
  /// Name of the TlsRoute resource. It matches pattern `projects/*/locations/global/tlsRoutes/tls_route_name&gt;`.
  final String? name;
  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  final List<TlsRouteRouteRuleResponseNetworkservicesV1beta1>? rules;
  /// Server-defined URL of this resource
  final String? selfLink;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetTlsRouteNetworkservicesV1beta1Result].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Optional. Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  /// [labels] Optional. Set of label tags associated with the TlsRoute resource.
  /// [meshes] Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  /// [name] Name of the TlsRoute resource. It matches pattern `projects/*/locations/global/tlsRoutes/tls_route_name&gt;`.
  /// [rules] Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  /// [selfLink] Server-defined URL of this resource
  /// [updateTime] The timestamp when the resource was updated.
  const GetTlsRouteNetworkservicesV1beta1Result({
    this.createTime,
    this.description,
    this.gateways,
    this.labels,
    this.meshes,
    this.name,
    this.rules,
    this.selfLink,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'gateways': ?gateways,
      'labels': ?labels,
      'meshes': ?meshes,
      'name': ?name,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<TlsRouteRouteRuleResponseNetworkservicesV1beta1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory GetTlsRouteNetworkservicesV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetTlsRouteNetworkservicesV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gateways: (() { final guardedValue = map['gateways']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      meshes: (() { final guardedValue = map['meshes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsRouteRouteRuleResponseNetworkservicesV1beta1>(guardedValue, (value) => TlsRouteRouteRuleResponseNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
