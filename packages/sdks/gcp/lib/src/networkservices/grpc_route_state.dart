// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule.dart';

/// Input properties used for looking up and filtering GrpcRoute resources.
class GrpcRouteState {
  /// Time the GrpcRoute was created in UTC.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  final pulumi.Input<List<String>>? gateways;
  /// Required. Service hostnames with an optional port for which this route describes traffic.
  final pulumi.Input<List<String>>? hostnames;
  /// Set of label tags associated with the GrpcRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location (region) of the GRPCRoute resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  final pulumi.Input<String>? location;
  /// List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  final pulumi.Input<List<String>>? meshes;
  /// Name of the GrpcRoute resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  final pulumi.Input<List<GrpcRouteRule>>? rules;
  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;
  /// Time the GrpcRoute was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GrpcRouteState].
  /// [createTime] Time the GrpcRoute was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gateways] List of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// [hostnames] Required. Service hostnames with an optional port for which this route describes traffic.
  /// [labels] Set of label tags associated with the GrpcRoute resource.
  /// [location] Location (region) of the GRPCRoute resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  /// [meshes] List of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// [name] Name of the GrpcRoute resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rules] Rules that define how traffic is routed and handled.
  /// [selfLink] Server-defined URL of this resource.
  /// [updateTime] Time the GrpcRoute was updated in UTC.
  GrpcRouteState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.gateways,
    this.hostnames,
    this.labels,
    this.location,
    this.meshes,
    this.name,
    this.project,
    this.pulumiLabels,
    this.rules,
    this.selfLink,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'gateways': ?gateways,
      'hostnames': ?hostnames,
      'labels': ?labels,
      'location': ?location,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GrpcRouteRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GrpcRouteRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory GrpcRouteState.fromMap(Map<String, dynamic> map) {
    return GrpcRouteState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      gateways: map['gateways'] == null ? null : ((map['gateways'] as List).cast<String>()).input(),
      hostnames: map['hostnames'] == null ? null : ((map['hostnames'] as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      meshes: map['meshes'] == null ? null : ((map['meshes'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<GrpcRouteRule>(map['rules'], (value) => GrpcRouteRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

