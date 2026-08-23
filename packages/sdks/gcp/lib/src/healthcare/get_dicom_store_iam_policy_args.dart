// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_get_dicom_store_iam_policy_get_dicom_store_iam_policy_args_doc}
/// Arguments for getDicomStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_get_dicom_store_iam_policy_get_dicom_store_iam_policy_args_doc}
class GetDicomStoreIamPolicyArgs {
  /// The DICOM store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{dicom_store_name}` or
  /// `{location_name}/{dataset_name}/{dicom_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> dicomStoreId;

  /// Creates a new [GetDicomStoreIamPolicyArgs].
  /// [dicomStoreId] The DICOM store ID, in the form
  const GetDicomStoreIamPolicyArgs({
    required this.dicomStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dicomStoreId': dicomStoreId,
    };
  }

  factory GetDicomStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreIamPolicyArgs(
      dicomStoreId: pulumi.Input.fromValue(map['dicomStoreId'] as String),
    );
  }
}
