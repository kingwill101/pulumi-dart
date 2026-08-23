// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_pool_compute_beta_args_doc}
/// Arguments for getTargetPool.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_pool_compute_beta_args_doc}
class GetTargetPoolComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetPool;

  /// Creates a new [GetTargetPoolComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetPool] Required.
  const GetTargetPoolComputeBetaArgs({
    this.project,
    required this.region,
    required this.targetPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetPool': targetPool,
    };
  }

  factory GetTargetPoolComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetPoolComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      targetPool: pulumi.Input.fromValue(map['targetPool'] as String),
    );
  }
}
