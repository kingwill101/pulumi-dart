// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_ssl_proxy_compute_v1_args_doc}
/// Arguments for getTargetSslProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_ssl_proxy_compute_v1_args_doc}
class GetTargetSslProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetSslProxy;

  /// Creates a new [GetTargetSslProxyComputeV1Args].
  /// [project] Optional.
  /// [targetSslProxy] Required.
  const GetTargetSslProxyComputeV1Args({
    this.project,
    required this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetSslProxy': targetSslProxy,
    };
  }

  factory GetTargetSslProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyComputeV1Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSslProxy: pulumi.Input.fromValue(map['targetSslProxy'] as String),
    );
  }
}
