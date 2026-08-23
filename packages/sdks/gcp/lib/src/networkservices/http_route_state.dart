// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule.dart';

/// Input properties used for looking up and filtering HttpRoute resources.
class HttpRouteState {
  /// Time the HttpRoute was created in UTC.
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/&lt;gateway_name&gt;
  final pulumi.Input<List<String>>? gateways;
  /// Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  final pulumi.Input<List<String>>? hostnames;
  /// Set of label tags associated with the HttpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/&lt;mesh_name&gt;.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const HttpRouteState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.gateways,
    this.hostnames,
    this.labels,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      gateways: (() { final guardedValue = map['gateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      meshes: (() { final guardedValue = map['meshes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteRule>(guardedValue, (value) => HttpRouteRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
