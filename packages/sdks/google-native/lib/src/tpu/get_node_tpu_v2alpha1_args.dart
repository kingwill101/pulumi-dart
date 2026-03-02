// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tpu_v2alpha1_get_node_tpu_v2alpha1_args_doc}
/// Arguments for getNode.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2alpha1_get_node_tpu_v2alpha1_args_doc}
class GetNodeTpuV2alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nodeId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNodeTpuV2alpha1Args].
  /// [location] Required.
  /// [nodeId] Required.
  /// [project] Optional.
  GetNodeTpuV2alpha1Args({
    required this.location,
    required this.nodeId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'nodeId': nodeId,
      'project': ?project,
    };
  }

  factory GetNodeTpuV2alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetNodeTpuV2alpha1Args(
      location: (map['location'] as String).input(),
      nodeId: (map['nodeId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

