// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_instance_compute_v1_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_instance_compute_v1_args_doc}
class GetInstanceComputeV1Args {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceComputeV1Args].
  /// [instance] Required.
  /// [project] Optional.
  /// [zone] Required.
  const GetInstanceComputeV1Args({
    required this.instance,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetInstanceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceComputeV1Args(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
