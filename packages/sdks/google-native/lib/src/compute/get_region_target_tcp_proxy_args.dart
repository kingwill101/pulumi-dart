// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_target_tcp_proxy_args_doc}
/// Arguments for getRegionTargetTcpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_target_tcp_proxy_args_doc}
class GetRegionTargetTcpProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetTcpProxy;

  /// Creates a new [GetRegionTargetTcpProxyArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetTcpProxy] Required.
  GetRegionTargetTcpProxyArgs({
    this.project,
    required this.region,
    required this.targetTcpProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetTcpProxy': targetTcpProxy,
    };
  }

  factory GetRegionTargetTcpProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetTcpProxyArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      targetTcpProxy: (map['targetTcpProxy'] as String).input(),
    );
  }
}

