// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_study_config_parameter_spec_categorical_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_discrete_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_double_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_integer_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_categorical_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_discrete_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_int_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_scale_type.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_type.dart';

/// Represents a single parameter to optimize.
class GoogleCloudMlV1StudyConfigParameterSpec {
  /// The value spec for a 'CATEGORICAL' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec? categoricalValueSpec;
  /// A child node is active if the parameter's value matches the child node's matching_parent_values. If two items in child_parameter_specs have the same name, they must have disjoint matching_parent_values.
  final List<GoogleCloudMlV1StudyConfigParameterSpec>? childParameterSpecs;
  /// The value spec for a 'DISCRETE' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec? discreteValueSpec;
  /// The value spec for a 'DOUBLE' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec? doubleValueSpec;
  /// The value spec for an 'INTEGER' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec? integerValueSpec;
  /// The parameter name must be unique amongst all ParameterSpecs.
  final String parameter;
  final GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec? parentCategoricalValues;
  final GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec? parentDiscreteValues;
  final GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec? parentIntValues;
  /// How the parameter should be scaled. Leave unset for categorical parameters.
  final GoogleCloudMlV1StudyConfigParameterSpecScaleType? scaleType;
  /// The type of the parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecType type;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpec].
  /// [categoricalValueSpec] The value spec for a 'CATEGORICAL' parameter.
  /// [childParameterSpecs] A child node is active if the parameter's value matches the child node's matching_parent_values. If two items in child_parameter_specs have the same name, they must have disjoint matching_parent_values.
  /// [discreteValueSpec] The value spec for a 'DISCRETE' parameter.
  /// [doubleValueSpec] The value spec for a 'DOUBLE' parameter.
  /// [integerValueSpec] The value spec for an 'INTEGER' parameter.
  /// [parameter] The parameter name must be unique amongst all ParameterSpecs.
  /// [parentCategoricalValues] Optional.
  /// [parentDiscreteValues] Optional.
  /// [parentIntValues] Optional.
  /// [scaleType] How the parameter should be scaled. Leave unset for categorical parameters.
  /// [type] The type of the parameter.
  GoogleCloudMlV1StudyConfigParameterSpec({
    this.categoricalValueSpec,
    this.childParameterSpecs,
    this.discreteValueSpec,
    this.doubleValueSpec,
    this.integerValueSpec,
    required this.parameter,
    this.parentCategoricalValues,
    this.parentDiscreteValues,
    this.parentIntValues,
    this.scaleType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalValueSpec': ?categoricalValueSpec == null ? null : categoricalValueSpec!.toMap(),
      'childParameterSpecs': ?childParameterSpecs == null ? null : pulumi.Input.encodeList<GoogleCloudMlV1StudyConfigParameterSpec, Map<String, dynamic>>(childParameterSpecs!, (value) => value.toMap()),
      'discreteValueSpec': ?discreteValueSpec == null ? null : discreteValueSpec!.toMap(),
      'doubleValueSpec': ?doubleValueSpec == null ? null : doubleValueSpec!.toMap(),
      'integerValueSpec': ?integerValueSpec == null ? null : integerValueSpec!.toMap(),
      'parameter': parameter,
      'parentCategoricalValues': ?parentCategoricalValues == null ? null : parentCategoricalValues!.toMap(),
      'parentDiscreteValues': ?parentDiscreteValues == null ? null : parentDiscreteValues!.toMap(),
      'parentIntValues': ?parentIntValues == null ? null : parentIntValues!.toMap(),
      'scaleType': ?scaleType == null ? null : scaleType!.value,
      'type': type.value,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpec(
      categoricalValueSpec: map['categoricalValueSpec'] == null ? null : GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec.fromMap((map['categoricalValueSpec'] as Map).cast<String, dynamic>()),
      childParameterSpecs: map['childParameterSpecs'] == null ? null : pulumi.Input.decodeList<GoogleCloudMlV1StudyConfigParameterSpec>(map['childParameterSpecs'], (value) => GoogleCloudMlV1StudyConfigParameterSpec.fromMap((value as Map).cast<String, dynamic>())),
      discreteValueSpec: map['discreteValueSpec'] == null ? null : GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec.fromMap((map['discreteValueSpec'] as Map).cast<String, dynamic>()),
      doubleValueSpec: map['doubleValueSpec'] == null ? null : GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec.fromMap((map['doubleValueSpec'] as Map).cast<String, dynamic>()),
      integerValueSpec: map['integerValueSpec'] == null ? null : GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec.fromMap((map['integerValueSpec'] as Map).cast<String, dynamic>()),
      parameter: map['parameter'] as String,
      parentCategoricalValues: map['parentCategoricalValues'] == null ? null : GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec.fromMap((map['parentCategoricalValues'] as Map).cast<String, dynamic>()),
      parentDiscreteValues: map['parentDiscreteValues'] == null ? null : GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec.fromMap((map['parentDiscreteValues'] as Map).cast<String, dynamic>()),
      parentIntValues: map['parentIntValues'] == null ? null : GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec.fromMap((map['parentIntValues'] as Map).cast<String, dynamic>()),
      scaleType: map['scaleType'] == null ? null : GoogleCloudMlV1StudyConfigParameterSpecScaleType.fromValue(map['scaleType'] as String),
      type: GoogleCloudMlV1StudyConfigParameterSpecType.fromValue(map['type'] as String),
    );
  }
}

