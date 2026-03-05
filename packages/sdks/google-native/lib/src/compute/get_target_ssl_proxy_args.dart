// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_target_ssl_proxy_args_doc}
/// Arguments for getTargetSslProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_target_ssl_proxy_args_doc}
class GetTargetSslProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetSslProxy;

  /// Creates a new [GetTargetSslProxyArgs].
  /// [project] Optional.
  /// [targetSslProxy] Required.
  GetTargetSslProxyArgs({
    this.project,
    required this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetSslProxy': targetSslProxy,
    };
  }

  factory GetTargetSslProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSslProxy: pulumi.Input.fromValue(map['targetSslProxy'] as String),
    );
  }
}

