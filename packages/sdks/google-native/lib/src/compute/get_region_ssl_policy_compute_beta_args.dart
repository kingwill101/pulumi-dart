// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_ssl_policy_compute_beta_args_doc}
/// Arguments for getRegionSslPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_ssl_policy_compute_beta_args_doc}
class GetRegionSslPolicyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> sslPolicy;

  /// Creates a new [GetRegionSslPolicyComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [sslPolicy] Required.
  GetRegionSslPolicyComputeBetaArgs({
    this.project,
    required this.region,
    required this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'sslPolicy': sslPolicy,
    };
  }

  factory GetRegionSslPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSslPolicyComputeBetaArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      sslPolicy: pulumi.Input.fromValue(map['sslPolicy'] as String),
    );
  }
}
