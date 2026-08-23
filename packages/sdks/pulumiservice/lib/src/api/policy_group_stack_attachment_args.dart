// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_policy_group_stack_attachment_args_doc}
/// The set of arguments for PolicyGroupStackAttachment.
/// {@endtemplate}
/// {@macro pulumi_api_policy_group_stack_attachment_args_doc}
class PolicyGroupStackAttachmentArgs {
  /// The name
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The policy group name
  final pulumi.Input<String> policyGroup;
  /// The routing project
  final pulumi.Input<String> routingProject;

  /// Creates a new [PolicyGroupStackAttachmentArgs].
  /// [name] The name
  /// [orgName] The organization name
  /// [policyGroup] The policy group name
  /// [routingProject] The routing project
  const PolicyGroupStackAttachmentArgs({
    required this.name,
    required this.orgName,
    required this.policyGroup,
    required this.routingProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'orgName': orgName,
      'policyGroup': policyGroup,
      'routingProject': routingProject,
    };
  }

  factory PolicyGroupStackAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyGroupStackAttachmentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      policyGroup: pulumi.Input.fromValue(map['policyGroup'] as String),
      routingProject: pulumi.Input.fromValue(map['routingProject'] as String),
    );
  }
}
