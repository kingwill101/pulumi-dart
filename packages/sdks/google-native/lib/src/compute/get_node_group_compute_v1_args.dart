// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_node_group_compute_v1_args_doc}
/// Arguments for getNodeGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_node_group_compute_v1_args_doc}
class GetNodeGroupComputeV1Args {
  final pulumi.Input<String> nodeGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetNodeGroupComputeV1Args].
  /// [nodeGroup] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetNodeGroupComputeV1Args({
    required pulumi.Output<String> nodeGroup,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      nodeGroup = pulumi.Input.asInput<String>(nodeGroup),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroup': nodeGroup,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetNodeGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupComputeV1Args(
      nodeGroup: pulumi.Output.create<String>(map['nodeGroup'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

