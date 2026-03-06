// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_http_health_check_compute_v1_args_doc}
/// Arguments for getHttpHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_http_health_check_compute_v1_args_doc}
class GetHttpHealthCheckComputeV1Args {
  final pulumi.Input<String> httpHealthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpHealthCheckComputeV1Args].
  /// [httpHealthCheck] Required.
  /// [project] Optional.
  const GetHttpHealthCheckComputeV1Args({
    required this.httpHealthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHealthCheck': httpHealthCheck,
      'project': ?project,
    };
  }

  factory GetHttpHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetHttpHealthCheckComputeV1Args(
      httpHealthCheck: pulumi.Input.fromValue(map['httpHealthCheck'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

