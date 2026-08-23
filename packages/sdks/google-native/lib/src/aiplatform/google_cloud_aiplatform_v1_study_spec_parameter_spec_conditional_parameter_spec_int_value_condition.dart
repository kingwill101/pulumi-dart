// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec to match integer values from parent parameter.
class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition {
  /// Matches values of the parent parameter of 'INTEGER' type. All values must lie in `integer_value_spec` of parent parameter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition].
  /// [values] Matches values of the parent parameter of 'INTEGER' type. All values must lie in `integer_value_spec` of parent parameter.
  const GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
