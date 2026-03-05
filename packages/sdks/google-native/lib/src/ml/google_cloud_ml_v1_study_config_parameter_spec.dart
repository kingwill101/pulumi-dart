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
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec>? categoricalValueSpec;
  /// A child node is active if the parameter's value matches the child node's matching_parent_values. If two items in child_parameter_specs have the same name, they must have disjoint matching_parent_values.
  final pulumi.Input<List<GoogleCloudMlV1StudyConfigParameterSpec>>? childParameterSpecs;
  /// The value spec for a 'DISCRETE' parameter.
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec>? discreteValueSpec;
  /// The value spec for a 'DOUBLE' parameter.
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec>? doubleValueSpec;
  /// The value spec for an 'INTEGER' parameter.
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec>? integerValueSpec;
  /// The parameter name must be unique amongst all ParameterSpecs.
  final pulumi.Input<String> parameter;
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec>? parentCategoricalValues;
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec>? parentDiscreteValues;
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec>? parentIntValues;
  /// How the parameter should be scaled. Leave unset for categorical parameters.
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecScaleType>? scaleType;
  /// The type of the parameter.
  final pulumi.Input<GoogleCloudMlV1StudyConfigParameterSpecType> type;

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
      'categoricalValueSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec, Map<String, dynamic>>(categoricalValueSpec, (value) => value.toMap()),
      'childParameterSpecs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudMlV1StudyConfigParameterSpec>, List<Map<String, dynamic>>>(childParameterSpecs, (value) => pulumi.Input.encodeList<GoogleCloudMlV1StudyConfigParameterSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discreteValueSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec, Map<String, dynamic>>(discreteValueSpec, (value) => value.toMap()),
      'doubleValueSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec, Map<String, dynamic>>(doubleValueSpec, (value) => value.toMap()),
      'integerValueSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec, Map<String, dynamic>>(integerValueSpec, (value) => value.toMap()),
      'parameter': parameter,
      'parentCategoricalValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec, Map<String, dynamic>>(parentCategoricalValues, (value) => value.toMap()),
      'parentDiscreteValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec, Map<String, dynamic>>(parentDiscreteValues, (value) => value.toMap()),
      'parentIntValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec, Map<String, dynamic>>(parentIntValues, (value) => value.toMap()),
      'scaleType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1StudyConfigParameterSpecScaleType, String>(scaleType, (value) => value.wireValue),
      'type': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfigParameterSpecType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpec(
      categoricalValueSpec: (() { final guardedValue = map['categoricalValueSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      childParameterSpecs: (() { final guardedValue = map['childParameterSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudMlV1StudyConfigParameterSpec>(guardedValue, (value) => GoogleCloudMlV1StudyConfigParameterSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discreteValueSpec: (() { final guardedValue = map['discreteValueSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      doubleValueSpec: (() { final guardedValue = map['doubleValueSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integerValueSpec: (() { final guardedValue = map['integerValueSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameter: pulumi.Input.fromValue(map['parameter'] as String),
      parentCategoricalValues: (() { final guardedValue = map['parentCategoricalValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentDiscreteValues: (() { final guardedValue = map['parentDiscreteValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentIntValues: (() { final guardedValue = map['parentIntValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleType: (() { final guardedValue = map['scaleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigParameterSpecScaleType.fromValue(guardedValue as String)); })(),
      type: pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigParameterSpecType.fromValue(map['type']! as String)),
    );
  }
}

