// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_health_check_args_doc}
/// Arguments for getHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_health_check_args_doc}
class GetHealthCheckArgs {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHealthCheckArgs].
  /// [healthCheck] Required.
  /// [project] Optional.
  GetHealthCheckArgs({
    required this.healthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'project': ?project,
    };
  }

  factory GetHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckArgs(
      healthCheck: (map['healthCheck'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

