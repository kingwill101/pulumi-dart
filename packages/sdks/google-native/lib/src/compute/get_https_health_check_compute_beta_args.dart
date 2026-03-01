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
    required pulumi.Output<String> httpsHealthCheck,
    pulumi.Output<String>? project,
  }) :
      httpsHealthCheck = pulumi.Input.asInput<String>(httpsHealthCheck),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsHealthCheck': httpsHealthCheck,
      'project': ?project,
    };
  }

  factory GetHttpsHealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckComputeBetaArgs(
      httpsHealthCheck: pulumi.Output.create<String>(map['httpsHealthCheck'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

