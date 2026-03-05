// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_ssl_proxy_compute_beta_args_doc}
/// Arguments for getTargetSslProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_ssl_proxy_compute_beta_args_doc}
class GetTargetSslProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetSslProxy;

  /// Creates a new [GetTargetSslProxyComputeBetaArgs].
  /// [project] Optional.
  /// [targetSslProxy] Required.
  GetTargetSslProxyComputeBetaArgs({
    this.project,
    required this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetSslProxy': targetSslProxy,
    };
  }

  factory GetTargetSslProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSslProxy: pulumi.Input.fromValue(map['targetSslProxy'] as String),
    );
  }
}

