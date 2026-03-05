// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec_categorical_value_condition.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec_discrete_value_condition.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec_int_value_condition.dart';

/// Represents a parameter spec with condition from its parent parameter.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec {
  /// The spec for a conditional parameter.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpec> parameterSpec;
  /// The spec for matching values from a parent parameter of `CATEGORICAL` type.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition>? parentCategoricalValues;
  /// The spec for matching values from a parent parameter of `DISCRETE` type.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition>? parentDiscreteValues;
  /// The spec for matching values from a parent parameter of `INTEGER` type.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition>? parentIntValues;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec].
  /// [parameterSpec] The spec for a conditional parameter.
  /// [parentCategoricalValues] The spec for matching values from a parent parameter of `CATEGORICAL` type.
  /// [parentDiscreteValues] The spec for matching values from a parent parameter of `DISCRETE` type.
  /// [parentIntValues] The spec for matching values from a parent parameter of `INTEGER` type.
  GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec({
    required this.parameterSpec,
    this.parentCategoricalValues,
    this.parentDiscreteValues,
    this.parentIntValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpec, Map<String, dynamic>>(parameterSpec, (value) => value.toMap()),
      'parentCategoricalValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition, Map<String, dynamic>>(parentCategoricalValues, (value) => value.toMap()),
      'parentDiscreteValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition, Map<String, dynamic>>(parentDiscreteValues, (value) => value.toMap()),
      'parentIntValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition, Map<String, dynamic>>(parentIntValues, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec(
      parameterSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecParameterSpec.fromMap((map['parameterSpec']! as Map).cast<String, dynamic>())),
      parentCategoricalValues: (() { final guardedValue = map['parentCategoricalValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentDiscreteValues: (() { final guardedValue = map['parentDiscreteValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentIntValues: (() { final guardedValue = map['parentIntValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

