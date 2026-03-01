// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_target_tcp_proxy_compute_v1_args_doc}
/// Arguments for getRegionTargetTcpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_target_tcp_proxy_compute_v1_args_doc}
class GetRegionTargetTcpProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetTcpProxy;

  /// Creates a new [GetRegionTargetTcpProxyComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [targetTcpProxy] Required.
  GetRegionTargetTcpProxyComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> targetTcpProxy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      targetTcpProxy = pulumi.Input.asInput<String>(targetTcpProxy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetTcpProxy': targetTcpProxy,
    };
  }

  factory GetRegionTargetTcpProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetTcpProxyComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      targetTcpProxy: pulumi.Output.create<String>(map['targetTcpProxy'] as String),
    );
  }
}

