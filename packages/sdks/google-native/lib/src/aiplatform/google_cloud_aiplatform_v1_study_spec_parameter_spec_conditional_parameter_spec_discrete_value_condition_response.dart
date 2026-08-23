// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec to match discrete values from parent parameter.
class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse {
  /// Matches values of the parent parameter of 'DISCRETE' type. All values must exist in `discrete_value_spec` of parent parameter. The Epsilon of the value matching is 1e-10.
  final pulumi.Input<List<double>> values;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse].
  /// [values] Matches values of the parent parameter of 'DISCRETE' type. All values must exist in `discrete_value_spec` of parent parameter. The Epsilon of the value matching is 1e-10.
  const GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<double>()),
    );
  }
}
