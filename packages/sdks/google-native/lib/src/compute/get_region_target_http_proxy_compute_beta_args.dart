// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_target_http_proxy_compute_beta_args_doc}
/// Arguments for getRegionTargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_target_http_proxy_compute_beta_args_doc}
class GetRegionTargetHttpProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpProxy;

  /// Creates a new [GetRegionTargetHttpProxyComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetHttpProxy] Required.
  GetRegionTargetHttpProxyComputeBetaArgs({
    this.project,
    required this.region,
    required this.targetHttpProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetHttpProxy': targetHttpProxy,
    };
  }

  factory GetRegionTargetHttpProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpProxyComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      targetHttpProxy: pulumi.Input.fromValue(map['targetHttpProxy'] as String),
    );
  }
}

