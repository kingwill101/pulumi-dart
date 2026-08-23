// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_auth_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_api_auth_policy_args_doc}
class PolicyArgs {
  /// The OIDC issuer identifier
  final pulumi.Input<String>? issuerId;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// List of policies
  final pulumi.Input<List<dynamic>> policies;
  /// The policy identifier
  final pulumi.Input<String> policyId;

  /// Creates a new [PolicyArgs].
  /// [issuerId] The OIDC issuer identifier
  /// [orgName] The organization name
  /// [policies] List of policies
  /// [policyId] The policy identifier
  const PolicyArgs({
    this.issuerId,
    required this.orgName,
    required this.policies,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerId': ?issuerId,
      'orgName': orgName,
      'policies': policies,
      'policyId': policyId,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      issuerId: (() { final guardedValue = map['issuerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      policies: pulumi.Input.fromValue((map['policies'] as List).cast<dynamic>()),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
