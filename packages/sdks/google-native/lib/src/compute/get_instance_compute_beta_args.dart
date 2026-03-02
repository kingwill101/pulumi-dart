// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instance_compute_beta_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instance_compute_beta_args_doc}
class GetInstanceComputeBetaArgs {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceComputeBetaArgs].
  /// [instance] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstanceComputeBetaArgs({
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

  factory GetInstanceComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceComputeBetaArgs(
      instance: (map['instance'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

