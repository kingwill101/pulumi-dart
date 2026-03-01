// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_target_http_proxy_compute_v1_args_doc}
/// Arguments for getRegionTargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_target_http_proxy_compute_v1_args_doc}
class GetRegionTargetHttpProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpProxy;

  /// Creates a new [GetRegionTargetHttpProxyComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [targetHttpProxy] Required.
  GetRegionTargetHttpProxyComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> targetHttpProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      targetHttpProxy = pulumi.Input.asInput<String>(targetHttpProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetHttpProxy': targetHttpProxy,
    };
  }

  factory GetRegionTargetHttpProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpProxyComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      targetHttpProxy: pulumi.Output.create<String>(map['targetHttpProxy'] as String),
    );
  }
}

