// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_policy_dns_v1beta2_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_policy_dns_v1beta2_args_doc}
class GetPolicyDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> policy;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyDnsV1beta2Args].
  /// [clientOperationId] Optional.
  /// [policy] Required.
  /// [project] Optional.
  GetPolicyDnsV1beta2Args({
    this.clientOperationId,
    required this.policy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'policy': policy,
      'project': ?project,
    };
  }

  factory GetPolicyDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetPolicyDnsV1beta2Args(
      clientOperationId: map['clientOperationId'] == null ? null : (map['clientOperationId']! as String).input(),
      policy: (map['policy'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

