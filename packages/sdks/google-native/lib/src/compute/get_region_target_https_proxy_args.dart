// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_target_https_proxy_args_doc}
/// Arguments for getRegionTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_target_https_proxy_args_doc}
class GetRegionTargetHttpsProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpsProxy;

  /// Creates a new [GetRegionTargetHttpsProxyArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetHttpsProxy] Required.
  const GetRegionTargetHttpsProxyArgs({
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

  factory GetRegionTargetHttpsProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      targetHttpsProxy: pulumi.Input.fromValue(map['targetHttpsProxy'] as String),
    );
  }
}

