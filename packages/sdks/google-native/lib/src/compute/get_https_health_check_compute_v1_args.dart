// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_https_health_check_compute_v1_args_doc}
/// Arguments for getHttpsHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_https_health_check_compute_v1_args_doc}
class GetHttpsHealthCheckComputeV1Args {
  final pulumi.Input<String> httpsHealthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpsHealthCheckComputeV1Args].
  /// [httpsHealthCheck] Required.
  /// [project] Optional.
  GetHttpsHealthCheckComputeV1Args({
    required this.httpsHealthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsHealthCheck': httpsHealthCheck,
      'project': ?project,
    };
  }

  factory GetHttpsHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckComputeV1Args(
      httpsHealthCheck: pulumi.Input.fromValue(map['httpsHealthCheck'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

