// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_policy_group_insights_account_attachment_args_doc}
/// The set of arguments for PolicyGroupInsightsAccountAttachment.
/// {@endtemplate}
/// {@macro pulumi_api_policy_group_insights_account_attachment_args_doc}
class PolicyGroupInsightsAccountAttachmentArgs {
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The policy group name
  final pulumi.Input<String> policyGroup;

  /// Creates a new [PolicyGroupInsightsAccountAttachmentArgs].
  /// [name] Required.
  /// [orgName] The organization name
  /// [policyGroup] The policy group name
  const PolicyGroupInsightsAccountAttachmentArgs({
    required this.name,
    required this.orgName,
    required this.policyGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'orgName': orgName,
      'policyGroup': policyGroup,
    };
  }

  factory PolicyGroupInsightsAccountAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyGroupInsightsAccountAttachmentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      policyGroup: pulumi.Input.fromValue(map['policyGroup'] as String),
    );
  }
}
