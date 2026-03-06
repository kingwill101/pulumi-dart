// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings related to NLU.
class GoogleCloudDialogflowCxV3NluSettingsResponse {
  /// To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  final pulumi.Input<double> classificationThreshold;
  /// Indicates NLU model training mode.
  final pulumi.Input<String> modelTrainingMode;
  /// Indicates the type of NLU model.
  final pulumi.Input<String> modelType;

  /// Creates a new [GoogleCloudDialogflowCxV3NluSettingsResponse].
  /// [classificationThreshold] To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  /// [modelTrainingMode] Indicates NLU model training mode.
  /// [modelType] Indicates the type of NLU model.
  const GoogleCloudDialogflowCxV3NluSettingsResponse({
    required this.classificationThreshold,
    required this.modelTrainingMode,
    required this.modelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationThreshold': classificationThreshold,
      'modelTrainingMode': modelTrainingMode,
      'modelType': modelType,
    };
  }

  factory GoogleCloudDialogflowCxV3NluSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3NluSettingsResponse(
      classificationThreshold: pulumi.Input.fromValue(map['classificationThreshold'] as double),
      modelTrainingMode: pulumi.Input.fromValue(map['modelTrainingMode'] as String),
      modelType: pulumi.Input.fromValue(map['modelType'] as String),
    );
  }
}

