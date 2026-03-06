// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_health_check_compute_beta_args_doc}
/// Arguments for getHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_health_check_compute_beta_args_doc}
class GetHealthCheckComputeBetaArgs {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHealthCheckComputeBetaArgs].
  /// [healthCheck] Required.
  /// [project] Optional.
  const GetHealthCheckComputeBetaArgs({
    required this.healthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'project': ?project,
    };
  }

  factory GetHealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckComputeBetaArgs(
      healthCheck: pulumi.Input.fromValue(map['healthCheck'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

