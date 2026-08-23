// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iambinding_condition.dart';

/// {@template pulumi_organizations_i_ambinding_iambinding_args_doc}
/// The set of arguments for IAMBinding.
/// {@endtemplate}
/// {@macro pulumi_organizations_i_ambinding_iambinding_args_doc}
class IAMBindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMBindingCondition>? condition;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;
  /// The organization id of the target organization.
  final pulumi.Input<String> orgId;
  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `organizations/{{org_id}}/roles/{{role_id}}`.
  final pulumi.Input<String> role;

  /// Creates a new [IAMBindingArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [orgId] The organization id of the target organization.
  /// [role] The role that should be applied. Only one
  const IAMBindingArgs({
    this.condition,
    required this.members,
    required this.orgId,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<IAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'orgId': orgId,
      'role': role,
    };
  }

  factory IAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return IAMBindingArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IAMBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
