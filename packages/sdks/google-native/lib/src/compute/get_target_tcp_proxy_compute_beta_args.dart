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
    pulumi.Output<String>? project,
    required pulumi.Output<String> targetTcpProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      targetTcpProxy = pulumi.Input.asInput<String>(targetTcpProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetTcpProxy': targetTcpProxy,
    };
  }

  factory GetTargetTcpProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyComputeBetaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetTcpProxy: pulumi.Output.create<String>(map['targetTcpProxy'] as String),
    );
  }
}

