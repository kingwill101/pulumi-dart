// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec_categorical_value_condition_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec_discrete_value_condition_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec_int_value_condition_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_response.dart';

/// Represents a parameter spec with condition from its parent parameter.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecResponse {
  /// The spec for a conditional parameter.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse> parameterSpec;
  /// The spec for matching values from a parent parameter of `CATEGORICAL` type.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse> parentCategoricalValues;
  /// The spec for matching values from a parent parameter of `DISCRETE` type.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse> parentDiscreteValues;
  /// The spec for matching values from a parent parameter of `INTEGER` type.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse> parentIntValues;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecResponse].
  /// [parameterSpec] The spec for a conditional parameter.
  /// [parentCategoricalValues] The spec for matching values from a parent parameter of `CATEGORICAL` type.
  /// [parentDiscreteValues] The spec for matching values from a parent parameter of `DISCRETE` type.
  /// [parentIntValues] The spec for matching values from a parent parameter of `INTEGER` type.
  GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecResponse({
    required this.parameterSpec,
    required this.parentCategoricalValues,
    required this.parentDiscreteValues,
    required this.parentIntValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse, Map<String, dynamic>>(parameterSpec, (value) => value.toMap()),
      'parentCategoricalValues': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse, Map<String, dynamic>>(parentCategoricalValues, (value) => value.toMap()),
      'parentDiscreteValues': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse, Map<String, dynamic>>(parentDiscreteValues, (value) => value.toMap()),
      'parentIntValues': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse, Map<String, dynamic>>(parentIntValues, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecResponse(
      parameterSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse.fromMap((map['parameterSpec']! as Map).cast<String, dynamic>())),
      parentCategoricalValues: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse.fromMap((map['parentCategoricalValues']! as Map).cast<String, dynamic>())),
      parentDiscreteValues: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse.fromMap((map['parentDiscreteValues']! as Map).cast<String, dynamic>())),
      parentIntValues: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse.fromMap((map['parentIntValues']! as Map).cast<String, dynamic>())),
    );
  }
}

