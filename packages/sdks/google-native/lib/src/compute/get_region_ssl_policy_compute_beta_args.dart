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
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> sslPolicy,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      sslPolicy = pulumi.Input.asInput<String>(sslPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'sslPolicy': sslPolicy,
    };
  }

  factory GetRegionSslPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSslPolicyComputeBetaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      sslPolicy: pulumi.Output.create<String>(map['sslPolicy'] as String),
    );
  }
}

