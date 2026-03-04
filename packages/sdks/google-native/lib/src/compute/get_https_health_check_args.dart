// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_https_health_check_args_doc}
/// Arguments for getHttpsHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_https_health_check_args_doc}
class GetHttpsHealthCheckArgs {
  final pulumi.Input<String> httpsHealthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpsHealthCheckArgs].
  /// [httpsHealthCheck] Required.
  /// [project] Optional.
  GetHttpsHealthCheckArgs({required this.httpsHealthCheck, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsHealthCheck': httpsHealthCheck,
      'project': ?project,
    };
  }

  factory GetHttpsHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckArgs(
      httpsHealthCheck: pulumi.Input.fromValue(
        map['httpsHealthCheck'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
