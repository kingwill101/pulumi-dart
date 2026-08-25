// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Datapolicyv2DataPolicyDataMaskingPolicy {
  /// A predefined masking expression.
  /// Possible values:
  /// SHA256
  /// ALWAYS_NULL
  /// DEFAULT_MASKING_VALUE
  /// LAST_FOUR_CHARACTERS
  /// FIRST_FOUR_CHARACTERS
  /// EMAIL_MASK
  /// DATE_YEAR_MASK
  /// RANDOM_HASH
  final pulumi.Input<String?>? predefinedExpression;
  /// The name of the BigQuery routine that contains the custom masking
  /// routine, in the format of
  /// `projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}`.
  final pulumi.Input<String?>? routine;

  /// Creates a new [Datapolicyv2DataPolicyDataMaskingPolicy].
  /// [predefinedExpression] A predefined masking expression.
  /// [routine] The name of the BigQuery routine that contains the custom masking
  const Datapolicyv2DataPolicyDataMaskingPolicy({
    this.predefinedExpression,
    this.routine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedExpression': ?predefinedExpression,
      'routine': ?routine,
    };
  }

  factory Datapolicyv2DataPolicyDataMaskingPolicy.fromMap(Map<String, dynamic> map) {
    return Datapolicyv2DataPolicyDataMaskingPolicy(
      predefinedExpression: (() { final guardedValue = map['predefinedExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routine: (() { final guardedValue = map['routine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
