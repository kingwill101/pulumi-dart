// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_categorical_value_condition.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_discrete_value_condition.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_int_value_condition.dart';

/// Represents a parameter spec with condition from its parent parameter.
class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec {
  /// The spec for a conditional parameter.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecParameterSpec> parameterSpec;
  /// The spec for matching values from a parent parameter of `CATEGORICAL` type.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition>? parentCategoricalValues;
  /// The spec for matching values from a parent parameter of `DISCRETE` type.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition>? parentDiscreteValues;
  /// The spec for matching values from a parent parameter of `INTEGER` type.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition>? parentIntValues;

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
      'parameterSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1StudySpecParameterSpec, Map<String, dynamic>>(parameterSpec, (value) => value.toMap()),
      'parentCategoricalValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition, Map<String, dynamic>>(parentCategoricalValues, (value) => value.toMap()),
      'parentDiscreteValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition, Map<String, dynamic>>(parentDiscreteValues, (value) => value.toMap()),
      'parentIntValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition, Map<String, dynamic>>(parentIntValues, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec(
      parameterSpec: (GoogleCloudAiplatformV1StudySpecParameterSpec.fromMap((map['parameterSpec'] as Map).cast<String, dynamic>())).input(),
      parentCategoricalValues: map['parentCategoricalValues'] == null ? null : (GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition.fromMap((map['parentCategoricalValues'] as Map).cast<String, dynamic>())).input(),
      parentDiscreteValues: map['parentDiscreteValues'] == null ? null : (GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition.fromMap((map['parentDiscreteValues'] as Map).cast<String, dynamic>())).input(),
      parentIntValues: map['parentIntValues'] == null ? null : (GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition.fromMap((map['parentIntValues'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

