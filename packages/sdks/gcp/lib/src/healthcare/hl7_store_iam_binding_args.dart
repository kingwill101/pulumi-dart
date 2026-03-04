// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_store_iam_binding_condition.dart';

/// {@template pulumi_healthcare_hl7_store_iam_binding_hl7_store_iam_binding_args_doc}
/// The set of arguments for Hl7StoreIamBinding.
/// {@endtemplate}
/// {@macro pulumi_healthcare_hl7_store_iam_binding_hl7_store_iam_binding_args_doc}
class Hl7StoreIamBindingArgs {
  final pulumi.Input<Hl7StoreIamBindingCondition>? condition;

  /// The HL7v2 store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{hl7_v2_store_name}` or
  /// `{location_name}/{dataset_name}/{hl7_v2_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> hl7V2StoreId;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;

  /// The role that should be applied. Only one
  /// `gcp.healthcare.Hl7StoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [Hl7StoreIamBindingArgs].
  /// [condition] Optional.
  /// [hl7V2StoreId] The HL7v2 store ID, in the form
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  Hl7StoreIamBindingArgs({
    this.condition,
    required this.hl7V2StoreId,
    required this.members,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            Hl7StoreIamBindingCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'hl7V2StoreId': hl7V2StoreId,
      'members': members,
      'role': role,
    };
  }

  factory Hl7StoreIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return Hl7StoreIamBindingArgs(
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Hl7StoreIamBindingCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hl7V2StoreId: pulumi.Input.fromValue(map['hl7V2StoreId'] as String),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
