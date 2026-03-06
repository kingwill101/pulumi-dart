// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Value specification for a parameter in `INTEGER` type.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpecIntegerValueSpecResponse {
  /// A default value for an `INTEGER` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final pulumi.Input<String> defaultValue;
  /// Inclusive maximum value of the parameter.
  final pulumi.Input<String> maxValue;
  /// Inclusive minimum value of the parameter.
  final pulumi.Input<String> minValue;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecParameterSpecIntegerValueSpecResponse].
  /// [defaultValue] A default value for an `INTEGER` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  /// [maxValue] Inclusive maximum value of the parameter.
  /// [minValue] Inclusive minimum value of the parameter.
  const GoogleCloudAiplatformV1beta1StudySpecParameterSpecIntegerValueSpecResponse({
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

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpecIntegerValueSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpecIntegerValueSpecResponse(
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
      maxValue: pulumi.Input.fromValue(map['maxValue'] as String),
      minValue: pulumi.Input.fromValue(map['minValue'] as String),
    );
  }
}

