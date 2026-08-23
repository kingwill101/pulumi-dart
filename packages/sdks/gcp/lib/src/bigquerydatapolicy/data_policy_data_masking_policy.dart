// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataPolicyDataMaskingPolicy {
  /// The available masking rules. Learn more here: https://cloud.google.com/bigquery/docs/column-data-masking-intro#masking_options.
  /// Possible values are: `SHA256`, `ALWAYS_NULL`, `DEFAULT_MASKING_VALUE`, `LAST_FOUR_CHARACTERS`, `FIRST_FOUR_CHARACTERS`, `EMAIL_MASK`, `DATE_YEAR_MASK`.
  final pulumi.Input<String>? predefinedExpression;
  /// The name of the BigQuery routine that contains the custom masking routine, in the format of projects/{projectNumber}/datasets/{dataset_id}/routines/{routine_id}.
  final pulumi.Input<String>? routine;

  /// Creates a new [DataPolicyDataMaskingPolicy].
  /// [predefinedExpression] The available masking rules. Learn more here: https://cloud.google.com/bigquery/docs/column-data-masking-intro#masking_options.
  /// [routine] The name of the BigQuery routine that contains the custom masking routine, in the format of projects/{projectNumber}/datasets/{dataset_id}/routines/{routine_id}.
  const DataPolicyDataMaskingPolicy({
    this.predefinedExpression,
    this.routine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedExpression': ?predefinedExpression,
      'routine': ?routine,
    };
  }

  factory DataPolicyDataMaskingPolicy.fromMap(Map<String, dynamic> map) {
    return DataPolicyDataMaskingPolicy(
      predefinedExpression: (() { final guardedValue = map['predefinedExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routine: (() { final guardedValue = map['routine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
