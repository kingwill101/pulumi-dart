// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Value specification for a parameter in `DOUBLE` type.
class GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpecResponse {
  /// A default value for a `DOUBLE` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final pulumi.Input<double> defaultValue;
  /// Inclusive maximum value of the parameter.
  final pulumi.Input<double> maxValue;
  /// Inclusive minimum value of the parameter.
  final pulumi.Input<double> minValue;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpecResponse].
  /// [defaultValue] A default value for a `DOUBLE` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  /// [maxValue] Inclusive maximum value of the parameter.
  /// [minValue] Inclusive minimum value of the parameter.
  const GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpecResponse({
    required this.defaultValue,
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': defaultValue,
      'maxValue': maxValue,
      'minValue': minValue,
    };
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpecResponse(
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as double),
      maxValue: pulumi.Input.fromValue(map['maxValue'] as double),
      minValue: pulumi.Input.fromValue(map['minValue'] as double),
    );
  }
}

