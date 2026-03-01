// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_get_dataset_iam_policy_get_dataset_iam_policy_args_doc}
/// Arguments for getDatasetIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquery_get_dataset_iam_policy_get_dataset_iam_policy_args_doc}
class GetDatasetIamPolicyArgs {
  /// The dataset ID.
  final pulumi.Input<String> datasetId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetIamPolicyArgs].
  /// [datasetId] The dataset ID.
  /// [project] The ID of the project in which the resource belongs.
  GetDatasetIamPolicyArgs({
    required pulumi.Output<String> datasetId,
    pulumi.Output<String>? project,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': ?project,
    };
  }

  factory GetDatasetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetIamPolicyArgs(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

