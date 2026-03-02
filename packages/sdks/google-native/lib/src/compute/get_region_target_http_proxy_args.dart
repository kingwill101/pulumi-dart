// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_target_http_proxy_args_doc}
/// Arguments for getRegionTargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_target_http_proxy_args_doc}
class GetRegionTargetHttpProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpProxy;

  /// Creates a new [GetRegionTargetHttpProxyArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetHttpProxy] Required.
  GetRegionTargetHttpProxyArgs({
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

  factory GetRegionTargetHttpProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpProxyArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      targetHttpProxy: (map['targetHttpProxy'] as String).input(),
    );
  }
}

