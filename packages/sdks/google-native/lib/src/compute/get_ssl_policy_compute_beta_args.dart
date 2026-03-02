// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_ssl_policy_compute_beta_args_doc}
/// Arguments for getSslPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_ssl_policy_compute_beta_args_doc}
class GetSslPolicyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslPolicy;

  /// Creates a new [GetSslPolicyComputeBetaArgs].
  /// [project] Optional.
  /// [sslPolicy] Required.
  GetSslPolicyComputeBetaArgs({
    this.project,
    required this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'sslPolicy': sslPolicy,
    };
  }

  factory GetSslPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetSslPolicyComputeBetaArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sslPolicy: (map['sslPolicy'] as String).input(),
    );
  }
}

