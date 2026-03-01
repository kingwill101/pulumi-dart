// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_iam_binding_condition.dart';

/// {@template pulumi_billing_account_iam_binding_account_iam_binding_args_doc}
/// The set of arguments for AccountIamBinding.
/// {@endtemplate}
/// {@macro pulumi_billing_account_iam_binding_account_iam_binding_args_doc}
class AccountIamBindingArgs {
  /// The billing account id.
  ///
  /// For `gcp.billing.AccountIamMember` or `gcp.billing.AccountIamBinding`:
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<AccountIamBindingCondition>? condition;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;
  /// The role that should be applied. Only one
  /// `gcp.billing.AccountIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// `gcp.billing.AccountIamPolicy` only:
  final pulumi.Input<String> role;

  /// Creates a new [AccountIamBindingArgs].
  /// [billingAccountId] The billing account id.
  /// [condition] Optional.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  AccountIamBindingArgs({
    required pulumi.Output<String> billingAccountId,
    pulumi.Output<AccountIamBindingCondition>? condition,
    required pulumi.Output<List<String>> members,
    required pulumi.Output<String> role,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      condition = pulumi.Input.asOptionalInput<AccountIamBindingCondition>(condition),
      members = pulumi.Input.asInput<List<String>>(members),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'condition': ?pulumi.Input.mapOptionalInputValue<AccountIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'role': role,
    };
  }

  factory AccountIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return AccountIamBindingArgs(
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      condition: map['condition'] == null ? null : pulumi.Output.create<AccountIamBindingCondition>(AccountIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      members: pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

