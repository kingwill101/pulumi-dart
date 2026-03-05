// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_policy_predefined_expression.dart';

/// The data masking policy that is used to specify data masking rule.
class DataMaskingPolicy {
  /// A predefined masking expression.
  final pulumi.Input<DataMaskingPolicyPredefinedExpression>? predefinedExpression;
  /// The name of the BigQuery routine that contains the custom masking routine, in the format of `projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}`.
  final pulumi.Input<String>? routine;

  /// Creates a new [DataMaskingPolicy].
  /// [predefinedExpression] A predefined masking expression.
  /// [routine] The name of the BigQuery routine that contains the custom masking routine, in the format of `projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}`.
  DataMaskingPolicy({
    this.predefinedExpression,
    this.routine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedExpression': ?pulumi.Input.mapOptionalInputValue<DataMaskingPolicyPredefinedExpression, String>(predefinedExpression, (value) => value.wireValue),
      'routine': ?routine,
    };
  }

  factory DataMaskingPolicy.fromMap(Map<String, dynamic> map) {
    return DataMaskingPolicy(
      predefinedExpression: (() { final guardedValue = map['predefinedExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataMaskingPolicyPredefinedExpression.fromValue(guardedValue as String)); })(),
      routine: (() { final guardedValue = map['routine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

