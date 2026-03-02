// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_iam_member_condition.dart';

/// Input properties used for looking up and filtering AccountIamMember resources.
class AccountIamMemberState {
  /// The billing account id.
  ///
  /// For `gcp.billing.AccountIamMember` or `gcp.billing.AccountIamBinding`:
  final pulumi.Input<String>? billingAccountId;
  final pulumi.Input<AccountIamMemberCondition>? condition;
  /// (Computed) The etag of the billing account's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String>? member;
  /// The role that should be applied. Only one
  /// `gcp.billing.AccountIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// `gcp.billing.AccountIamPolicy` only:
  final pulumi.Input<String>? role;

  /// Creates a new [AccountIamMemberState].
  /// [billingAccountId] The billing account id.
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the billing account's IAM policy.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  AccountIamMemberState({
    this.billingAccountId,
    this.condition,
    this.etag,
    this.member,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': ?billingAccountId,
      'condition': ?pulumi.Input.mapOptionalInputValue<AccountIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'member': ?member,
      'role': ?role,
    };
  }

  factory AccountIamMemberState.fromMap(Map<String, dynamic> map) {
    return AccountIamMemberState(
      billingAccountId: map['billingAccountId'] == null ? null : (map['billingAccountId'] as String).input(),
      condition: map['condition'] == null ? null : (AccountIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      member: map['member'] == null ? null : (map['member'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

