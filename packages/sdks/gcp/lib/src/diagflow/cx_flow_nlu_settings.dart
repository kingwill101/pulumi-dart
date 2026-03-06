// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowNluSettings {
  /// To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold.
  /// If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  final pulumi.Input<double>? classificationThreshold;
  /// Indicates NLU model training mode.
  /// * MODEL_TRAINING_MODE_AUTOMATIC: NLU model training is automatically triggered when a flow gets modified. User can also manually trigger model training in this mode.
  /// * MODEL_TRAINING_MODE_MANUAL: User needs to manually trigger NLU model training. Best for large flows whose models take long time to train.
  /// Possible values are: `MODEL_TRAINING_MODE_AUTOMATIC`, `MODEL_TRAINING_MODE_MANUAL`.
  final pulumi.Input<String>? modelTrainingMode;
  /// Indicates the type of NLU model.
  /// * MODEL_TYPE_STANDARD: Use standard NLU model.
  /// * MODEL_TYPE_ADVANCED: Use advanced NLU model.
  /// Possible values are: `MODEL_TYPE_STANDARD`, `MODEL_TYPE_ADVANCED`.
  final pulumi.Input<String>? modelType;

  /// Creates a new [CxFlowNluSettings].
  /// [classificationThreshold] To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold.
  /// [modelTrainingMode] Indicates NLU model training mode.
  /// [modelType] Indicates the type of NLU model.
  const CxFlowNluSettings({
    this.classificationThreshold,
    this.modelTrainingMode,
    this.modelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationThreshold': ?classificationThreshold,
      'modelTrainingMode': ?modelTrainingMode,
      'modelType': ?modelType,
    };
  }

  factory CxFlowNluSettings.fromMap(Map<String, dynamic> map) {
    return CxFlowNluSettings(
      classificationThreshold: (() { final guardedValue = map['classificationThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      modelTrainingMode: (() { final guardedValue = map['modelTrainingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelType: (() { final guardedValue = map['modelType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

