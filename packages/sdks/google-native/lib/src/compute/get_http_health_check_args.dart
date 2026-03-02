// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_http_health_check_args_doc}
/// Arguments for getHttpHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_http_health_check_args_doc}
class GetHttpHealthCheckArgs {
  final pulumi.Input<String> httpHealthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpHealthCheckArgs].
  /// [httpHealthCheck] Required.
  /// [project] Optional.
  GetHttpHealthCheckArgs({
    required this.httpHealthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHealthCheck': httpHealthCheck,
      'project': ?project,
    };
  }

  factory GetHttpHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpHealthCheckArgs(
      httpHealthCheck: (map['httpHealthCheck'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

