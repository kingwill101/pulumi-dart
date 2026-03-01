// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_http_proxy_compute_v1_args_doc}
/// Arguments for getTargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_http_proxy_compute_v1_args_doc}
class GetTargetHttpProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetHttpProxy;

  /// Creates a new [GetTargetHttpProxyComputeV1Args].
  /// [project] Optional.
  /// [targetHttpProxy] Required.
  GetTargetHttpProxyComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> targetHttpProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      targetHttpProxy = pulumi.Input.asInput<String>(targetHttpProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetHttpProxy': targetHttpProxy,
    };
  }

  factory GetTargetHttpProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetHttpProxy: pulumi.Output.create<String>(map['targetHttpProxy'] as String),
    );
  }
}

