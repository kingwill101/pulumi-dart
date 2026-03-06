// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_source_iam_policy_source_iam_policy_args_doc}
/// The set of arguments for SourceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_source_iam_policy_source_iam_policy_args_doc}
class SourceIamPolicyArgs {
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String> organization;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String> source;

  /// Creates a new [SourceIamPolicyArgs].
  /// [organization] The organization whose Cloud Security Command Center the Source
  /// [policyData] Required.
  /// [source] Required.
  const SourceIamPolicyArgs({
    required this.organization,
    required this.policyData,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': organization,
      'policyData': policyData,
      'source': source,
    };
  }

  factory SourceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SourceIamPolicyArgs(
      organization: pulumi.Input.fromValue(map['organization'] as String),
      policyData: pulumi.Input.fromValue(map['policyData'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

