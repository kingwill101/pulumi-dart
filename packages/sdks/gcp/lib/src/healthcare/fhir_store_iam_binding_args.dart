// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_store_iam_binding_condition.dart';

/// {@template pulumi_healthcare_fhir_store_iam_binding_fhir_store_iam_binding_args_doc}
/// The set of arguments for FhirStoreIamBinding.
/// {@endtemplate}
/// {@macro pulumi_healthcare_fhir_store_iam_binding_fhir_store_iam_binding_args_doc}
class FhirStoreIamBindingArgs {
  final pulumi.Input<FhirStoreIamBindingCondition>? condition;
  /// The FHIR store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{fhir_store_name}` or
  /// `{location_name}/{dataset_name}/{fhir_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> fhirStoreId;
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
  /// `gcp.healthcare.FhirStoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [FhirStoreIamBindingArgs].
  /// [condition] Optional.
  /// [fhirStoreId] The FHIR store ID, in the form
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  FhirStoreIamBindingArgs({
    this.condition,
    required this.fhirStoreId,
    required this.members,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<FhirStoreIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'fhirStoreId': fhirStoreId,
      'members': members,
      'role': role,
    };
  }

  factory FhirStoreIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return FhirStoreIamBindingArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirStoreIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fhirStoreId: pulumi.Input.fromValue(map['fhirStoreId'] as String),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

