// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_nlu_settings_model_training_mode.dart';
import 'google_cloud_dialogflow_cx_v3_nlu_settings_model_type.dart';

/// Settings related to NLU.
class GoogleCloudDialogflowCxV3NluSettings {
  /// To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  final pulumi.Input<double>? classificationThreshold;
  /// Indicates NLU model training mode.
  final pulumi.Input<GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode>? modelTrainingMode;
  /// Indicates the type of NLU model.
  final pulumi.Input<GoogleCloudDialogflowCxV3NluSettingsModelType>? modelType;

  /// Creates a new [GoogleCloudDialogflowCxV3NluSettings].
  /// [classificationThreshold] To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  /// [modelTrainingMode] Indicates NLU model training mode.
  /// [modelType] Indicates the type of NLU model.
  GoogleCloudDialogflowCxV3NluSettings({
    this.classificationThreshold,
    this.modelTrainingMode,
    this.modelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationThreshold': ?classificationThreshold,
      'modelTrainingMode': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode, String>(modelTrainingMode, (value) => value.wireValue),
      'modelType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3NluSettingsModelType, String>(modelType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDialogflowCxV3NluSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3NluSettings(
      classificationThreshold: (() { final guardedValue = map['classificationThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      modelTrainingMode: (() { final guardedValue = map['modelTrainingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode.fromValue(guardedValue as String)); })(),
      modelType: (() { final guardedValue = map['modelType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3NluSettingsModelType.fromValue(guardedValue as String)); })(),
    );
  }
}

