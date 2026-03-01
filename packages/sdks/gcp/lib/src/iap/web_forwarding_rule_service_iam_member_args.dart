// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_forwarding_rule_service_iam_member_condition.dart';

/// {@template pulumi_iap_web_forwarding_rule_service_iam_member_web_forwarding_rule_service_iam_member_args_doc}
/// The set of arguments for WebForwardingRuleServiceIamMember.
/// {@endtemplate}
/// {@macro pulumi_iap_web_forwarding_rule_service_iam_member_web_forwarding_rule_service_iam_member_args_doc}
class WebForwardingRuleServiceIamMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<WebForwardingRuleServiceIamMemberCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> forwardingRuleServiceName;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  final pulumi.Input<String> member;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.iap.WebForwardingRuleServiceIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [WebForwardingRuleServiceIamMemberArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [forwardingRuleServiceName] Used to find the parent resource to bind the IAM policy to
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  WebForwardingRuleServiceIamMemberArgs({
    pulumi.Output<WebForwardingRuleServiceIamMemberCondition>? condition,
    required pulumi.Output<String> forwardingRuleServiceName,
    required pulumi.Output<String> member,
    pulumi.Output<String>? project,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<WebForwardingRuleServiceIamMemberCondition>(condition),
      forwardingRuleServiceName = pulumi.Input.asInput<String>(forwardingRuleServiceName),
      member = pulumi.Input.asInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<WebForwardingRuleServiceIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'forwardingRuleServiceName': forwardingRuleServiceName,
      'member': member,
      'project': ?project,
      'role': role,
    };
  }

  factory WebForwardingRuleServiceIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return WebForwardingRuleServiceIamMemberArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<WebForwardingRuleServiceIamMemberCondition>(WebForwardingRuleServiceIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      forwardingRuleServiceName: pulumi.Output.create<String>(map['forwardingRuleServiceName'] as String),
      member: pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

