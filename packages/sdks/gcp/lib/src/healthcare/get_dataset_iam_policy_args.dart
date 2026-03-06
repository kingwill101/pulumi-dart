// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_get_dataset_iam_policy_get_dataset_iam_policy_args_doc}
/// Arguments for getDatasetIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_get_dataset_iam_policy_get_dataset_iam_policy_args_doc}
class GetDatasetIamPolicyArgs {
  /// The dataset ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}` or
  /// `{location_name}/{dataset_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> datasetId;

  /// Creates a new [GetDatasetIamPolicyArgs].
  /// [datasetId] The dataset ID, in the form
  const GetDatasetIamPolicyArgs({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
    };
  }

  factory GetDatasetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetIamPolicyArgs(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
    );
  }
}

