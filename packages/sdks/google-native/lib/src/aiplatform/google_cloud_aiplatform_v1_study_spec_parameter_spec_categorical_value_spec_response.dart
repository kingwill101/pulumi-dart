// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Value specification for a parameter in `CATEGORICAL` type.
class GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpecResponse {
  /// A default value for a `CATEGORICAL` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final pulumi.Input<String> defaultValue;

  /// The list of possible categories.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpecResponse].
  /// [defaultValue] A default value for a `CATEGORICAL` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  /// [values] The list of possible categories.
  GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpecResponse({
    required this.defaultValue,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'defaultValue': defaultValue, 'values': values};
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpecResponse(
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
