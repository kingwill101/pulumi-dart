// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_access_policy_details_rule_condition.dart';
import 'project_access_policy_details_rule_operation.dart';

class ProjectAccessPolicyDetailsRule {
  /// The conditions that determine whether this rule applies to a request.
  /// Conditions are identified by their key, which is the FQDN of the service
  /// that they are relevant to. For example:
  /// ```
  /// "conditions": {
  /// "iam.googleapis.com": {
  /// "expression":
  /// }
  /// }
  /// ```
  /// Each rule is evaluated independently. If this rule does not apply
  /// to a request, other rules might still apply.
  /// Currently supported keys are as follows:
  /// * `eventarc.googleapis.com`: Can use `CEL` functions that evaluate
  /// resource fields.
  /// * `iam.googleapis.com`: Can use `CEL` functions that evaluate
  /// [resource
  /// tags](https://cloud.google.com/iam/help/conditions/resource-tags) and
  /// combine them using boolean and logical operators. Other functions and
  /// operators are not supported.
  /// Structure is documented below.
  final pulumi.Input<List<ProjectAccessPolicyDetailsRuleCondition>?>? conditions;
  /// Customer specified description of the rule. Must be less than or equal to
  /// 256 characters.
  final pulumi.Input<String?>? description;
  /// The effect of the rule.
  /// Possible values:
  /// DENY
  /// ALLOW
  /// Possible values are: `DENY`, `ALLOW`.
  final pulumi.Input<String> effect;
  /// The identities that are excluded from the access policy rule, even if they
  /// are listed in the `principals`. For example, you could add a Google
  /// group to the `principals`, then exclude specific users who belong to
  /// that group.
  final pulumi.Input<List<String>?>? excludedPrincipals;
  /// Attributes that are used to determine whether this rule applies to a
  /// request.
  /// Structure is documented below.
  final pulumi.Input<ProjectAccessPolicyDetailsRuleOperation> operation;
  /// The identities for which this rule's effect governs using one or more
  /// permissions on Google Cloud resources. This field can contain the
  /// following values:
  /// * `principal://goog/subject/{email_id}`: A specific Google Account.
  /// Includes Gmail, Cloud Identity, and Google Workspace user accounts. For
  /// example, `principal://goog/subject/alice@example.com`.
  /// * `principal://iam.googleapis.com/projects/-/serviceAccounts/{service_account_id}`:
  /// A Google Cloud service account. For example,
  /// `principal://iam.googleapis.com/projects/-/serviceAccounts/my-service-account@iam.gserviceaccount.com`.
  /// * `principalSet://goog/group/{group_id}`: A Google group. For example,
  /// `principalSet://goog/group/admins@example.com`.
  /// * `principalSet://goog/cloudIdentityCustomerId/{customer_id}`: All of the
  /// principals associated with the specified Google Workspace or Cloud
  /// Identity customer ID. For example,
  /// `principalSet://goog/cloudIdentityCustomerId/C01Abc35`.
  /// If an identifier that was previously set on a policy is soft deleted, then
  /// calls to read that policy will return the identifier with a deleted
  /// prefix. Users cannot set identifiers with this syntax.
  /// * `deleted:principal://goog/subject/{email_id}?uid={uid}`: A specific
  /// Google Account that was deleted recently. For example,
  /// `deleted:principal://goog/subject/alice@example.com?uid=1234567890`. If
  /// the Google Account is recovered, this identifier reverts to the standard
  /// identifier for a Google Account.
  /// * `deleted:principalSet://goog/group/{group_id}?uid={uid}`: A Google group
  /// that was deleted recently. For example,
  /// `deleted:principalSet://goog/group/admins@example.com?uid=1234567890`.
  /// If the Google group is restored, this identifier reverts to the standard
  /// identifier for a Google group.
  /// * `deleted:principal://iam.googleapis.com/projects/-/serviceAccounts/{service_account_id}?uid={uid}`:
  /// A Google Cloud service account that was deleted recently. For example,
  /// `deleted:principal://iam.googleapis.com/projects/-/serviceAccounts/my-service-account@iam.gserviceaccount.com?uid=1234567890`.
  /// If the service account is undeleted, this identifier reverts to the
  /// standard identifier for a service account.
  final pulumi.Input<List<String>> principals;

  /// Creates a new [ProjectAccessPolicyDetailsRule].
  /// [conditions] The conditions that determine whether this rule applies to a request.
  /// [description] Customer specified description of the rule. Must be less than or equal to
  /// [effect] The effect of the rule.
  /// [excludedPrincipals] The identities that are excluded from the access policy rule, even if they
  /// [operation] Attributes that are used to determine whether this rule applies to a
  /// [principals] The identities for which this rule's effect governs using one or more
  const ProjectAccessPolicyDetailsRule({
    this.conditions,
    this.description,
    required this.effect,
    this.excludedPrincipals,
    required this.operation,
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ProjectAccessPolicyDetailsRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ProjectAccessPolicyDetailsRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'effect': effect,
      'excludedPrincipals': ?excludedPrincipals,
      'operation': pulumi.Input.mapInputValue<ProjectAccessPolicyDetailsRuleOperation, Map<String, dynamic>>(operation, (value) => value.toMap()),
      'principals': principals,
    };
  }

  factory ProjectAccessPolicyDetailsRule.fromMap(Map<String, dynamic> map) {
    return ProjectAccessPolicyDetailsRule(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectAccessPolicyDetailsRuleCondition>(guardedValue, (value) => ProjectAccessPolicyDetailsRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effect: pulumi.Input.fromValue(map['effect'] as String),
      excludedPrincipals: (() { final guardedValue = map['excludedPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      operation: pulumi.Input.fromValue(ProjectAccessPolicyDetailsRuleOperation.fromMap((map['operation']! as Map).cast<String, dynamic>())),
      principals: pulumi.Input.fromValue((map['principals'] as List).cast<String>()),
    );
  }
}
