// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_store_iam_member_condition.dart';

/// Input properties used for looking up and filtering DicomStoreIamMember resources.
class DicomStoreIamMemberState {
  final pulumi.Input<DicomStoreIamMemberCondition>? condition;
  /// The DICOM store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{dicom_store_name}` or
  /// `{location_name}/{dataset_name}/{dicom_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String>? dicomStoreId;
  /// (Computed) The etag of the DICOM store's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String>? member;
  /// The role that should be applied. Only one
  /// `gcp.healthcare.DicomStoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [DicomStoreIamMemberState].
  /// [condition] Optional.
  /// [dicomStoreId] The DICOM store ID, in the form
  /// [etag] (Computed) The etag of the DICOM store's IAM policy.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  const DicomStoreIamMemberState({
    this.condition,
    this.dicomStoreId,
    this.etag,
    this.member,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<DicomStoreIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'dicomStoreId': ?dicomStoreId,
      'etag': ?etag,
      'member': ?member,
      'role': ?role,
    };
  }

  factory DicomStoreIamMemberState.fromMap(Map<String, dynamic> map) {
    return DicomStoreIamMemberState(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DicomStoreIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dicomStoreId: (() { final guardedValue = map['dicomStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
