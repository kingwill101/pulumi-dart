// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec to match categorical values from parent parameter.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition {
  /// Matches values of the parent parameter of 'CATEGORICAL' type. All values must exist in `categorical_value_spec` of parent parameter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition].
  /// [values] Matches values of the parent parameter of 'CATEGORICAL' type. All values must exist in `categorical_value_spec` of parent parameter.
  GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
