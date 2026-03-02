// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_instance_compute_v1_args_doc}
/// Arguments for getTargetInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_instance_compute_v1_args_doc}
class GetTargetInstanceComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetInstance;
  final pulumi.Input<String> zone;

  /// Creates a new [GetTargetInstanceComputeV1Args].
  /// [project] Optional.
  /// [targetInstance] Required.
  /// [zone] Required.
  GetTargetInstanceComputeV1Args({
    this.project,
    required this.targetInstance,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetInstance': targetInstance,
      'zone': zone,
    };
  }

  factory GetTargetInstanceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetInstanceComputeV1Args(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      targetInstance: (map['targetInstance'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

