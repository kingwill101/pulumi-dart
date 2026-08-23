// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_parameter_spec_scale_type.dart';
import 'google_cloud_ml_v1_parameter_spec_type.dart';

/// Represents a single hyperparameter to optimize.
class GoogleCloudMlV1ParameterSpec {
  /// Required if type is `CATEGORICAL`. The list of possible categories.
  final pulumi.Input<List<String>>? categoricalValues;
  /// Required if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
  final pulumi.Input<List<double>>? discreteValues;
  /// Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is `INTEGER`.
  final pulumi.Input<double>? maxValue;
  /// Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is INTEGER.
  final pulumi.Input<double>? minValue;
  /// The parameter name must be unique amongst all ParameterConfigs in a HyperparameterSpec message. E.g., "learning_rate".
  final pulumi.Input<String> parameterName;
  /// Optional. How the parameter should be scaled to the hypercube. Leave unset for categorical parameters. Some kind of scaling is strongly recommended for real or integral parameters (e.g., `UNIT_LINEAR_SCALE`).
  final pulumi.Input<GoogleCloudMlV1ParameterSpecScaleType>? scaleType;
  /// The type of the parameter.
  final pulumi.Input<GoogleCloudMlV1ParameterSpecType> type;

  /// Creates a new [GoogleCloudMlV1ParameterSpec].
  /// [categoricalValues] Required if type is `CATEGORICAL`. The list of possible categories.
  /// [discreteValues] Required if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
  /// [maxValue] Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is `INTEGER`.
  /// [minValue] Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is INTEGER.
  /// [parameterName] The parameter name must be unique amongst all ParameterConfigs in a HyperparameterSpec message. E.g., "learning_rate".
  /// [scaleType] Optional. How the parameter should be scaled to the hypercube. Leave unset for categorical parameters. Some kind of scaling is strongly recommended for real or integral parameters (e.g., `UNIT_LINEAR_SCALE`).
  /// [type] The type of the parameter.
  const GoogleCloudMlV1ParameterSpec({
    this.categoricalValues,
    this.discreteValues,
    this.maxValue,
    this.minValue,
    required this.parameterName,
    this.scaleType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalValues': ?categoricalValues,
      'discreteValues': ?discreteValues,
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'parameterName': parameterName,
      'scaleType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1ParameterSpecScaleType, String>(scaleType, (value) => value.wireValue),
      'type': pulumi.Input.mapInputValue<GoogleCloudMlV1ParameterSpecType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudMlV1ParameterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1ParameterSpec(
      categoricalValues: (() { final guardedValue = map['categoricalValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      discreteValues: (() { final guardedValue = map['discreteValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      maxValue: (() { final guardedValue = map['maxValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minValue: (() { final guardedValue = map['minValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
      scaleType: (() { final guardedValue = map['scaleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1ParameterSpecScaleType.fromValue(guardedValue as String)); })(),
      type: pulumi.Input.fromValue(GoogleCloudMlV1ParameterSpecType.fromValue(map['type']! as String)),
    );
  }
}
