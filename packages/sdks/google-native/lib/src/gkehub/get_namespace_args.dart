// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_namespace_args_doc}
/// Arguments for getNamespace.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_namespace_args_doc}
class GetNamespaceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetNamespaceArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [scopeId] Required.
  GetNamespaceArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> namespaceId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> scopeId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      project = pulumi.Input.asOptionalInput<String>(project),
      scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory GetNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scopeId: pulumi.Output.create<String>(map['scopeId'] as String),
    );
  }
}

