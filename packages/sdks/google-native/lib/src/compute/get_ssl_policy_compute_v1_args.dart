// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_ssl_policy_compute_v1_args_doc}
/// Arguments for getSslPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_ssl_policy_compute_v1_args_doc}
class GetSslPolicyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslPolicy;

  /// Creates a new [GetSslPolicyComputeV1Args].
  /// [project] Optional.
  /// [sslPolicy] Required.
  GetSslPolicyComputeV1Args({
    this.project,
    required this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'sslPolicy': sslPolicy,
    };
  }

  factory GetSslPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSslPolicyComputeV1Args(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sslPolicy: (map['sslPolicy'] as String).input(),
    );
  }
}

