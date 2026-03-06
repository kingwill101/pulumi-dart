// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_http_health_check_compute_beta_args_doc}
/// Arguments for getHttpHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_http_health_check_compute_beta_args_doc}
class GetHttpHealthCheckComputeBetaArgs {
  final pulumi.Input<String> httpHealthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpHealthCheckComputeBetaArgs].
  /// [httpHealthCheck] Required.
  /// [project] Optional.
  const GetHttpHealthCheckComputeBetaArgs({
    required this.httpHealthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHealthCheck': httpHealthCheck,
      'project': ?project,
    };
  }

  factory GetHttpHealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpHealthCheckComputeBetaArgs(
      httpHealthCheck: pulumi.Input.fromValue(map['httpHealthCheck'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

