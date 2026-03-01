// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_https_proxy_compute_v1_args_doc}
/// Arguments for getTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_https_proxy_compute_v1_args_doc}
class GetTargetHttpsProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetHttpsProxy;

  /// Creates a new [GetTargetHttpsProxyComputeV1Args].
  /// [project] Optional.
  /// [targetHttpsProxy] Required.
  GetTargetHttpsProxyComputeV1Args({
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

  factory GetTargetHttpsProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpsProxyComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetHttpsProxy: pulumi.Output.create<String>(map['targetHttpsProxy'] as String),
    );
  }
}

