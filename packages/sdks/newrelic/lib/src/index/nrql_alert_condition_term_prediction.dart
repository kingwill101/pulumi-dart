// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NrqlAlertConditionTermPrediction {
  /// BETA PREVIEW: the `predict_by` field is in limited release and only enabled for preview on a per-account basis. - The duration, in seconds, that the prediction should look into the future.
  final pulumi.Input<int>? predictBy;
  /// BETA PREVIEW: the `prefer_prediction_violation` field is in limited release and only enabled for preview on a per-account basis. - If a prediction incident is open when a term's static threshold is breached by the actual signal, default behavior is to close the prediction incident and open a static incident. Setting `prefer_prediction_violation` to `true` overrides this behavior leaving the prediction incident open and preventing a static incident from opening.
  final pulumi.Input<bool>? preferPredictionViolation;

  /// Creates a new [NrqlAlertConditionTermPrediction].
  /// [predictBy] BETA PREVIEW: the `predict_by` field is in limited release and only enabled for preview on a per-account basis. - The duration, in seconds, that the prediction should look into the future.
  /// [preferPredictionViolation] BETA PREVIEW: the `prefer_prediction_violation` field is in limited release and only enabled for preview on a per-account basis. - If a prediction incident is open when a term's static threshold is breached by the actual signal, default behavior is to close the prediction incident and open a static incident. Setting `prefer_prediction_violation` to `true` overrides this behavior leaving the prediction incident open and preventing a static incident from opening.
  NrqlAlertConditionTermPrediction({
    this.predictBy,
    this.preferPredictionViolation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predictBy': ?predictBy,
      'preferPredictionViolation': ?preferPredictionViolation,
    };
  }

  factory NrqlAlertConditionTermPrediction.fromMap(Map<String, dynamic> map) {
    return NrqlAlertConditionTermPrediction(
      predictBy: map['predictBy'] == null ? null : (map['predictBy'] as int).input(),
      preferPredictionViolation: map['preferPredictionViolation'] == null ? null : (map['preferPredictionViolation'] as bool).input(),
    );
  }
}

