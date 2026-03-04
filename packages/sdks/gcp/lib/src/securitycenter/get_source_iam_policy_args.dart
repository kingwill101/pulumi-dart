// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_get_source_iam_policy_get_source_iam_policy_args_doc}
/// Arguments for getSourceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_get_source_iam_policy_get_source_iam_policy_args_doc}
class GetSourceIamPolicyArgs {
  final pulumi.Input<String> organization;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> source;

  /// Creates a new [GetSourceIamPolicyArgs].
  /// [organization] Required.
  /// [source] Used to find the parent resource to bind the IAM policy to
  GetSourceIamPolicyArgs({required this.organization, required this.source});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'organization': organization, 'source': source};
  }

  factory GetSourceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceIamPolicyArgs(
      organization: pulumi.Input.fromValue(map['organization'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
