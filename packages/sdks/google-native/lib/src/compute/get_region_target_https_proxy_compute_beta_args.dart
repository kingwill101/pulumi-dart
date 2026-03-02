// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_target_https_proxy_compute_beta_args_doc}
/// Arguments for getRegionTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_target_https_proxy_compute_beta_args_doc}
class GetRegionTargetHttpsProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpsProxy;

  /// Creates a new [GetRegionTargetHttpsProxyComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetHttpsProxy] Required.
  GetRegionTargetHttpsProxyComputeBetaArgs({
    this.project,
    required this.region,
    required this.targetHttpsProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetHttpsProxy': targetHttpsProxy,
    };
  }

  factory GetRegionTargetHttpsProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyComputeBetaArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      targetHttpsProxy: (map['targetHttpsProxy'] as String).input(),
    );
  }
}

