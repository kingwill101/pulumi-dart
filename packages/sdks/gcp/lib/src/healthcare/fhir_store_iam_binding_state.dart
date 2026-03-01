// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_store_iam_binding_condition.dart';

/// Input properties used for looking up and filtering FhirStoreIamBinding resources.
class FhirStoreIamBindingState {
  final pulumi.Input<FhirStoreIamBindingCondition>? condition;
  /// (Computed) The etag of the FHIR store's IAM policy.
  final pulumi.Input<String>? etag;
  /// The FHIR store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{fhir_store_name}` or
  /// `{location_name}/{dataset_name}/{fhir_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String>? fhirStoreId;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>>? members;
  /// The role that should be applied. Only one
  /// `gcp.healthcare.FhirStoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [FhirStoreIamBindingState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the FHIR store's IAM policy.
  /// [fhirStoreId] The FHIR store ID, in the form
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  FhirStoreIamBindingState({
    pulumi.Output<FhirStoreIamBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? fhirStoreId,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<FhirStoreIamBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      fhirStoreId = pulumi.Input.asOptionalInput<String>(fhirStoreId),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<FhirStoreIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'fhirStoreId': ?fhirStoreId,
      'members': ?members,
      'role': ?role,
    };
  }

  factory FhirStoreIamBindingState.fromMap(Map<String, dynamic> map) {
    return FhirStoreIamBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<FhirStoreIamBindingCondition>(FhirStoreIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      fhirStoreId: map['fhirStoreId'] == null ? null : pulumi.Output.create<String>(map['fhirStoreId'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

