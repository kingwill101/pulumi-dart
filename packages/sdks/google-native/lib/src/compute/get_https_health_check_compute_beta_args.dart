// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_https_health_check_compute_beta_args_doc}
/// Arguments for getHttpsHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_https_health_check_compute_beta_args_doc}
class GetHttpsHealthCheckComputeBetaArgs {
  final pulumi.Input<String> httpsHealthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpsHealthCheckComputeBetaArgs].
  /// [httpsHealthCheck] Required.
  /// [project] Optional.
  GetHttpsHealthCheckComputeBetaArgs({
    required this.httpsHealthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsHealthCheck': httpsHealthCheck,
      'project': ?project,
    };
  }

  factory GetHttpsHealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckComputeBetaArgs(
      httpsHealthCheck: (map['httpsHealthCheck'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

