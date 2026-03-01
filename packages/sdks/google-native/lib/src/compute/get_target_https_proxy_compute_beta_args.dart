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
    pulumi.Output<String>? project,
    required pulumi.Output<String> targetHttpsProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      targetHttpsProxy = pulumi.Input.asInput<String>(targetHttpsProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetHttpsProxy': targetHttpsProxy,
    };
  }

  factory GetTargetHttpsProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpsProxyComputeBetaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetHttpsProxy: pulumi.Output.create<String>(map['targetHttpsProxy'] as String),
    );
  }
}

