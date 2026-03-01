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
  GetHealthCheckComputeBetaArgs({
    required pulumi.Output<String> healthCheck,
    pulumi.Output<String>? project,
  }) :
      healthCheck = pulumi.Input.asInput<String>(healthCheck),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'project': ?project,
    };
  }

  factory GetHealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckComputeBetaArgs(
      healthCheck: pulumi.Output.create<String>(map['healthCheck'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

