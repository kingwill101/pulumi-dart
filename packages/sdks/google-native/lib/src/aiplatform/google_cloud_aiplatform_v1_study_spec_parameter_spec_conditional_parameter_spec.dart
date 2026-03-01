// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_study_spec_parameter_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_categorical_value_condition.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_discrete_value_condition.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_int_value_condition.dart';

/// Represents a parameter spec with condition from its parent parameter.
class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec {
  /// The spec for a conditional parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpec parameterSpec;
  /// The spec for matching values from a parent parameter of `CATEGORICAL` type.
  final GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition? parentCategoricalValues;
  /// The spec for matching values from a parent parameter of `DISCRETE` type.
  final GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition? parentDiscreteValues;
  /// The spec for matching values from a parent parameter of `INTEGER` type.
  final GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition? parentIntValues;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec].
  /// [parameterSpec] The spec for a conditional parameter.
  /// [parentCategoricalValues] The spec for matching values from a parent parameter of `CATEGORICAL` type.
  /// [parentDiscreteValues] The spec for matching values from a parent parameter of `DISCRETE` type.
  /// [parentIntValues] The spec for matching values from a parent parameter of `INTEGER` type.
  GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec({
    required this.parameterSpec,
    this.parentCategoricalValues,
    this.parentDiscreteValues,
    this.parentIntValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterSpec': parameterSpec.toMap(),
      'parentCategoricalValues': ?parentCategoricalValues == null ? null : parentCategoricalValues!.toMap(),
      'parentDiscreteValues': ?parentDiscreteValues == null ? null : parentDiscreteValues!.toMap(),
      'parentIntValues': ?parentIntValues == null ? null : parentIntValues!.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec(
      parameterSpec: GoogleCloudAiplatformV1StudySpecParameterSpec.fromMap((map['parameterSpec'] as Map).cast<String, dynamic>()),
      parentCategoricalValues: map['parentCategoricalValues'] == null ? null : GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition.fromMap((map['parentCategoricalValues'] as Map).cast<String, dynamic>()),
      parentDiscreteValues: map['parentDiscreteValues'] == null ? null : GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition.fromMap((map['parentDiscreteValues'] as Map).cast<String, dynamic>()),
      parentIntValues: map['parentIntValues'] == null ? null : GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition.fromMap((map['parentIntValues'] as Map).cast<String, dynamic>()),
    );
  }
}

