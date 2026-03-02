// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_iam_binding_condition.dart';

/// Input properties used for looking up and filtering AccountIamBinding resources.
class AccountIamBindingState {
  /// The billing account id.
  ///
  /// For `gcp.billing.AccountIamMember` or `gcp.billing.AccountIamBinding`:
  final pulumi.Input<String>? billingAccountId;
  final pulumi.Input<AccountIamBindingCondition>? condition;
  /// (Computed) The etag of the billing account's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>>? members;
  /// The role that should be applied. Only one
  /// `gcp.billing.AccountIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// `gcp.billing.AccountIamPolicy` only:
  final pulumi.Input<String>? role;

  /// Creates a new [AccountIamBindingState].
  /// [billingAccountId] The billing account id.
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the billing account's IAM policy.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  AccountIamBindingState({
    this.billingAccountId,
    this.condition,
    this.etag,
    this.members,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': ?billingAccountId,
      'condition': ?pulumi.Input.mapOptionalInputValue<AccountIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'members': ?members,
      'role': ?role,
    };
  }

  factory AccountIamBindingState.fromMap(Map<String, dynamic> map) {
    return AccountIamBindingState(
      billingAccountId: map['billingAccountId'] == null ? null : (map['billingAccountId'] as String).input(),
      condition: map['condition'] == null ? null : (AccountIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      members: map['members'] == null ? null : ((map['members'] as List).cast<String>()).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

