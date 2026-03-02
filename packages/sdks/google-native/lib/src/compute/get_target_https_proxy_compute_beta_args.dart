// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_https_proxy_compute_beta_args_doc}
/// Arguments for getTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_https_proxy_compute_beta_args_doc}
class GetTargetHttpsProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetHttpsProxy;

  /// Creates a new [GetTargetHttpsProxyComputeBetaArgs].
  /// [project] Optional.
  /// [targetHttpsProxy] Required.
  GetTargetHttpsProxyComputeBetaArgs({
    this.project,
    required this.targetHttpsProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetHttpsProxy': targetHttpsProxy,
    };
  }

  factory GetTargetHttpsProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpsProxyComputeBetaArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      targetHttpsProxy: (map['targetHttpsProxy'] as String).input(),
    );
  }
}

