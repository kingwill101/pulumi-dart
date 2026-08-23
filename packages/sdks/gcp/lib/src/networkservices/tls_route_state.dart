// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_rule.dart';

/// Input properties used for looking up and filtering TlsRoute resources.
class TlsRouteState {
  /// Time the TlsRoute was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/*/gateways/&lt;gateway_name&gt;
  final pulumi.Input<List<String>>? gateways;
  /// Location (region) of the TLS Route.
  final pulumi.Input<String>? location;
  /// Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/*/meshes/&lt;mesh_name&gt;
  /// The attached Mesh should be of a type SIDECAR
  final pulumi.Input<List<String>>? meshes;
  /// Name of the TlsRoute resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  final pulumi.Input<List<TlsRouteRule>>? rules;
  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;
  /// TargetProxies defines a list of target proxies this TlsRoute is attached to, as one of the routing rules to route the requests served by the load balancer.
  /// Each target proxy reference should match the pattern: projects/*/locations/global/targetTcpProxies/&lt;target_tcp_proxy_name&gt;
  final pulumi.Input<List<String>>? targetProxies;
  /// Time the TlsRoute was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TlsRouteState].
  /// [createTime] Time the TlsRoute was created in UTC.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// [location] Location (region) of the TLS Route.
  /// [meshes] Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// [name] Name of the TlsRoute resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] Rules that define how traffic is routed and handled.
  /// [selfLink] Server-defined URL of this resource.
  /// [targetProxies] TargetProxies defines a list of target proxies this TlsRoute is attached to, as one of the routing rules to route the requests served by the load balancer.
  /// [updateTime] Time the TlsRoute was updated in UTC.
  const TlsRouteState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.gateways,
    this.location,
    this.meshes,
    this.name,
    this.project,
    this.rules,
    this.selfLink,
    this.targetProxies,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'gateways': ?gateways,
      'location': ?location,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<TlsRouteRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<TlsRouteRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'targetProxies': ?targetProxies,
      'updateTime': ?updateTime,
    };
  }

  factory TlsRouteState.fromMap(Map<String, dynamic> map) {
    return TlsRouteState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gateways: (() { final guardedValue = map['gateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meshes: (() { final guardedValue = map['meshes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TlsRouteRule>(guardedValue, (value) => TlsRouteRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetProxies: (() { final guardedValue = map['targetProxies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
