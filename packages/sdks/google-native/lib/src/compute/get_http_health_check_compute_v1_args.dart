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
  GetHttpHealthCheckComputeV1Args({
    required pulumi.Output<String> httpHealthCheck,
    pulumi.Output<String>? project,
  }) :
      httpHealthCheck = pulumi.Input.asInput<String>(httpHealthCheck),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHealthCheck': httpHealthCheck,
      'project': ?project,
    };
  }

  factory GetHttpHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetHttpHealthCheckComputeV1Args(
      httpHealthCheck: pulumi.Output.create<String>(map['httpHealthCheck'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

