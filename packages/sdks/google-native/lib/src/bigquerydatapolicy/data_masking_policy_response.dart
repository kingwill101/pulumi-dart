// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data masking policy that is used to specify data masking rule.
class DataMaskingPolicyResponse {
  /// A predefined masking expression.
  final pulumi.Input<String> predefinedExpression;
  /// The name of the BigQuery routine that contains the custom masking routine, in the format of `projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}`.
  final pulumi.Input<String> routine;

  /// Creates a new [DataMaskingPolicyResponse].
  /// [predefinedExpression] A predefined masking expression.
  /// [routine] The name of the BigQuery routine that contains the custom masking routine, in the format of `projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}`.
  DataMaskingPolicyResponse({
    required this.predefinedExpression,
    required this.routine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedExpression': predefinedExpression,
      'routine': routine,
    };
  }

  factory DataMaskingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return DataMaskingPolicyResponse(
      predefinedExpression: pulumi.Input.fromValue(map['predefinedExpression'] as String),
      routine: pulumi.Input.fromValue(map['routine'] as String),
    );
  }
}

