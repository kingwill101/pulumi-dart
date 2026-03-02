// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_categorical_value_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_discrete_value_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_double_value_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_integer_value_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_scale_type.dart';

/// Represents a single parameter to optimize.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpec {
  /// The value spec for a 'CATEGORICAL' parameter.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecCategoricalValueSpec>? categoricalValueSpec;
  /// A conditional parameter node is active if the parameter's value matches the conditional node's parent_value_condition. If two items in conditional_parameter_specs have the same name, they must have disjoint parent_value_condition.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec>>? conditionalParameterSpecs;
  /// The value spec for a 'DISCRETE' parameter.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecDiscreteValueSpec>? discreteValueSpec;
  /// The value spec for a 'DOUBLE' parameter.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecDoubleValueSpec>? doubleValueSpec;
  /// The value spec for an 'INTEGER' parameter.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecIntegerValueSpec>? integerValueSpec;
  /// The ID of the parameter. Must not contain whitespaces and must be unique amongst all ParameterSpecs.
  final pulumi.Input<String> parameterId;
  /// How the parameter should be scaled. Leave unset for `CATEGORICAL` parameters.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecParameterSpecScaleType>? scaleType;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecParameterSpec].
  /// [categoricalValueSpec] The value spec for a 'CATEGORICAL' parameter.
  /// [conditionalParameterSpecs] A conditional parameter node is active if the parameter's value matches the conditional node's parent_value_condition. If two items in conditional_parameter_specs have the same name, they must have disjoint parent_value_condition.
  /// [discreteValueSpec] The value spec for a 'DISCRETE' parameter.
  /// [doubleValueSpec] The value spec for a 'DOUBLE' parameter.
  /// [integerValueSpec] The value spec for an 'INTEGER' parameter.
  /// [parameterId] The ID of the parameter. Must not contain whitespaces and must be unique amongst all ParameterSpecs.
  /// [scaleType] How the parameter should be scaled. Leave unset for `CATEGORICAL` parameters.
  GoogleCloudAiplatformV1beta1StudySpecParameterSpec({
    this.categoricalValueSpec,
    this.conditionalParameterSpecs,
    this.discreteValueSpec,
    this.doubleValueSpec,
    this.integerValueSpec,
    required this.parameterId,
    this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalValueSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecCategoricalValueSpec, Map<String, dynamic>>(categoricalValueSpec, (value) => value.toMap()),
      'conditionalParameterSpecs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec>, List<Map<String, dynamic>>>(conditionalParameterSpecs, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discreteValueSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecDiscreteValueSpec, Map<String, dynamic>>(discreteValueSpec, (value) => value.toMap()),
      'doubleValueSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecDoubleValueSpec, Map<String, dynamic>>(doubleValueSpec, (value) => value.toMap()),
      'integerValueSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecIntegerValueSpec, Map<String, dynamic>>(integerValueSpec, (value) => value.toMap()),
      'parameterId': parameterId,
      'scaleType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecParameterSpecScaleType, String>(scaleType, (value) => value.value),
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpec(
      categoricalValueSpec: map['categoricalValueSpec'] == null ? null : (GoogleCloudAiplatformV1beta1StudySpecParameterSpecCategoricalValueSpec.fromMap((map['categoricalValueSpec']! as Map).cast<String, dynamic>())).input(),
      conditionalParameterSpecs: map['conditionalParameterSpecs'] == null ? null : (pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec>(map['conditionalParameterSpecs']!, (value) => GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discreteValueSpec: map['discreteValueSpec'] == null ? null : (GoogleCloudAiplatformV1beta1StudySpecParameterSpecDiscreteValueSpec.fromMap((map['discreteValueSpec']! as Map).cast<String, dynamic>())).input(),
      doubleValueSpec: map['doubleValueSpec'] == null ? null : (GoogleCloudAiplatformV1beta1StudySpecParameterSpecDoubleValueSpec.fromMap((map['doubleValueSpec']! as Map).cast<String, dynamic>())).input(),
      integerValueSpec: map['integerValueSpec'] == null ? null : (GoogleCloudAiplatformV1beta1StudySpecParameterSpecIntegerValueSpec.fromMap((map['integerValueSpec']! as Map).cast<String, dynamic>())).input(),
      parameterId: (map['parameterId'] as String).input(),
      scaleType: map['scaleType'] == null ? null : (GoogleCloudAiplatformV1beta1StudySpecParameterSpecScaleType.fromValue(map['scaleType']! as String)).input(),
    );
  }
}

