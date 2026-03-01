// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule.dart';

/// Input properties used for looking up and filtering HttpRoute resources.
class HttpRouteState {
  /// Time the HttpRoute was created in UTC.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  final pulumi.Input<List<String>>? gateways;
  /// Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  final pulumi.Input<List<String>>? hostnames;
  /// Set of label tags associated with the HttpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>.
  /// The attached Mesh should be of a type SIDECAR.
  final pulumi.Input<List<String>>? meshes;
  /// Name of the HttpRoute resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  final pulumi.Input<List<HttpRouteRule>>? rules;
  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;
  /// Time the HttpRoute was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [HttpRouteState].
  /// [createTime] Time the HttpRoute was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gateways] Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// [hostnames] Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  /// [labels] Set of label tags associated with the HttpRoute resource.
  /// [meshes] Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// [name] Name of the HttpRoute resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rules] Rules that define how traffic is routed and handled.
  /// [selfLink] Server-defined URL of this resource.
  /// [updateTime] Time the HttpRoute was updated in UTC.
  HttpRouteState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<String>>? gateways,
    pulumi.Output<List<String>>? hostnames,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<String>>? meshes,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<HttpRouteRule>>? rules,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      gateways = pulumi.Input.asOptionalInput<List<String>>(gateways),
      hostnames = pulumi.Input.asOptionalInput<List<String>>(hostnames),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      meshes = pulumi.Input.asOptionalInput<List<String>>(meshes),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      rules = pulumi.Input.asOptionalInput<List<HttpRouteRule>>(rules),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'gateways': ?gateways,
      'hostnames': ?hostnames,
      'labels': ?labels,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<HttpRouteRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory HttpRouteState.fromMap(Map<String, dynamic> map) {
    return HttpRouteState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      gateways: map['gateways'] == null ? null : pulumi.Output.create<List<String>>((map['gateways'] as List).cast<String>()),
      hostnames: map['hostnames'] == null ? null : pulumi.Output.create<List<String>>((map['hostnames'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      meshes: map['meshes'] == null ? null : pulumi.Output.create<List<String>>((map['meshes'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<HttpRouteRule>>(pulumi.Input.decodeList<HttpRouteRule>(map['rules'], (value) => HttpRouteRule.fromMap((value as Map).cast<String, dynamic>()))),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

