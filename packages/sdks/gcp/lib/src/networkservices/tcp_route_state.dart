// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_rule.dart';

/// Input properties used for looking up and filtering TcpRoute resources.
class TcpRouteState {
  /// Time the TcpRoute was created in UTC.
  final pulumi.Input<String>? createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/&lt;gateway_name&gt;
  final pulumi.Input<List<String>>? gateways;

  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/&lt;mesh_name&gt;
  /// The attached Mesh should be of a type SIDECAR
  final pulumi.Input<List<String>>? meshes;

  /// Name of the TcpRoute resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied.
  /// If there are multiple rules then the action taken will be the first rule to match.
  /// Structure is documented below.
  final pulumi.Input<List<TcpRouteRule>>? rules;

  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;

  /// Time the TcpRoute was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TcpRouteState].
  /// [createTime] Time the TcpRoute was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gateways] Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// [labels] Set of label tags associated with the TcpRoute resource.
  /// [meshes] Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// [name] Name of the TcpRoute resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rules] Rules that define how traffic is routed and handled. At least one RouteRule must be supplied.
  /// [selfLink] Server-defined URL of this resource.
  /// [updateTime] Time the TcpRoute was updated in UTC.
  TcpRouteState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.gateways,
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
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'gateways': ?gateways,
      'labels': ?labels,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<TcpRouteRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<TcpRouteRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory TcpRouteState.fromMap(Map<String, dynamic> map) {
    return TcpRouteState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      gateways: (() {
        final guardedValue = map['gateways'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      meshes: (() {
        final guardedValue = map['meshes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TcpRouteRule>(
            guardedValue,
            (value) =>
                TcpRouteRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      selfLink: (() {
        final guardedValue = map['selfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
