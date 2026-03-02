// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_tcp_proxy_compute_beta_args_doc}
/// Arguments for getTargetTcpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_tcp_proxy_compute_beta_args_doc}
class GetTargetTcpProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetTcpProxy;

  /// Creates a new [GetTargetTcpProxyComputeBetaArgs].
  /// [project] Optional.
  /// [targetTcpProxy] Required.
  GetTargetTcpProxyComputeBetaArgs({
    this.project,
    required this.targetTcpProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetTcpProxy': targetTcpProxy,
    };
  }

  factory GetTargetTcpProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyComputeBetaArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      targetTcpProxy: (map['targetTcpProxy'] as String).input(),
    );
  }
}

