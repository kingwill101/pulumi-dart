// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_node_types_get_node_types_args_doc}
/// Arguments for getNodeTypes.
/// {@endtemplate}
/// {@macro pulumi_compute_get_node_types_get_node_types_args_doc}
class GetNodeTypesArgs {
  /// ID of the project to list available node types for.
  /// Should match the project the nodes of this type will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final pulumi.Input<String>? project;
  /// The zone to list node types for. Should be in zone of intended node groups and region of referencing node template. If `zone` is not specified, the provider-level zone must be set and is used
  /// instead.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetNodeTypesArgs].
  /// [project] ID of the project to list available node types for.
  /// [zone] The zone to list node types for. Should be in zone of intended node groups and region of referencing node template. If `zone` is not specified, the provider-level zone must be set and is used
  GetNodeTypesArgs({
    pulumi.Output<String>? project,
    pulumi.Output<String>? zone,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetNodeTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTypesArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

