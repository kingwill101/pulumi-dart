// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_study_config_parameter_spec_categorical_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_discrete_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_double_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_integer_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_categorical_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_discrete_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_int_value_spec_response.dart';

/// Represents a single parameter to optimize.
class GoogleCloudMlV1StudyConfigParameterSpecResponse {
  /// The value spec for a 'CATEGORICAL' parameter.
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse> categoricalValueSpec;
  /// A child node is active if the parameter's value matches the child node's matching_parent_values. If two items in child_parameter_specs have the same name, they must have disjoint matching_parent_values.
  final pulumi.Input<List<GoogleCloudMlV1StudyConfigParameterSpecResponse>> childParameterSpecs;
  /// The value spec for a 'DISCRETE' parameter.
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse> discreteValueSpec;
  /// The value spec for a 'DOUBLE' parameter.
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse> doubleValueSpec;
  /// The value spec for an 'INTEGER' parameter.
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse> integerValueSpec;
  /// The parameter name must be unique amongst all ParameterSpecs.
  final pulumi.Input<String> parameter;
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse> parentCategoricalValues;
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse> parentDiscreteValues;
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse> parentIntValues;
  /// How the parameter should be scaled. Leave unset for categorical parameters.
  final pulumi.Input<String> scaleType;
  /// The type of the parameter.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecResponse].
  /// [categoricalValueSpec] The value spec for a 'CATEGORICAL' parameter.
  /// [childParameterSpecs] A child node is active if the parameter's value matches the child node's matching_parent_values. If two items in child_parameter_specs have the same name, they must have disjoint matching_parent_values.
  /// [discreteValueSpec] The value spec for a 'DISCRETE' parameter.
  /// [doubleValueSpec] The value spec for a 'DOUBLE' parameter.
  /// [integerValueSpec] The value spec for an 'INTEGER' parameter.
  /// [parameter] The parameter name must be unique amongst all ParameterSpecs.
  /// [parentCategoricalValues] Required.
  /// [parentDiscreteValues] Required.
  /// [parentIntValues] Required.
  /// [scaleType] How the parameter should be scaled. Leave unset for categorical parameters.
  /// [type] The type of the parameter.
  GoogleCloudMlV1StudyConfigParameterSpecResponse({
    required this.categoricalValueSpec,
    required this.childParameterSpecs,
    required this.discreteValueSpec,
    required this.doubleValueSpec,
    required this.integerValueSpec,
    required this.parameter,
    required this.parentCategoricalValues,
    required this.parentDiscreteValues,
    required this.parentIntValues,
    required this.scaleType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalValueSpec': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse, Map<String, dynamic>>(categoricalValueSpec, (value) => value.toMap()),
      'childParameterSpecs': pulumi.Input.mapInputValue<List<GoogleCloudMlV1StudyConfigParameterSpecResponse>, List<Map<String, dynamic>>>(childParameterSpecs, (value) => pulumi.Input.encodeList<GoogleCloudMlV1StudyConfigParameterSpecResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discreteValueSpec': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse, Map<String, dynamic>>(discreteValueSpec, (value) => value.toMap()),
      'doubleValueSpec': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse, Map<String, dynamic>>(doubleValueSpec, (value) => value.toMap()),
      'integerValueSpec': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse, Map<String, dynamic>>(integerValueSpec, (value) => value.toMap()),
      'parameter': parameter,
      'parentCategoricalValues': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse, Map<String, dynamic>>(parentCategoricalValues, (value) => value.toMap()),
      'parentDiscreteValues': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse, Map<String, dynamic>>(parentDiscreteValues, (value) => value.toMap()),
      'parentIntValues': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse, Map<String, dynamic>>(parentIntValues, (value) => value.toMap()),
      'scaleType': scaleType,
      'type': type,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecResponse(
      categoricalValueSpec: (GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse.fromMap((map['categoricalValueSpec'] as Map).cast<String, dynamic>())).input(),
      childParameterSpecs: (pulumi.Input.decodeList<GoogleCloudMlV1StudyConfigParameterSpecResponse>(map['childParameterSpecs'], (value) => GoogleCloudMlV1StudyConfigParameterSpecResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discreteValueSpec: (GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse.fromMap((map['discreteValueSpec'] as Map).cast<String, dynamic>())).input(),
      doubleValueSpec: (GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse.fromMap((map['doubleValueSpec'] as Map).cast<String, dynamic>())).input(),
      integerValueSpec: (GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse.fromMap((map['integerValueSpec'] as Map).cast<String, dynamic>())).input(),
      parameter: (map['parameter'] as String).input(),
      parentCategoricalValues: (GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse.fromMap((map['parentCategoricalValues'] as Map).cast<String, dynamic>())).input(),
      parentDiscreteValues: (GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse.fromMap((map['parentDiscreteValues'] as Map).cast<String, dynamic>())).input(),
      parentIntValues: (GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse.fromMap((map['parentIntValues'] as Map).cast<String, dynamic>())).input(),
      scaleType: (map['scaleType'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

