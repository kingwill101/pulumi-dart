// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger {
  /// The score range is in [0,100].
  final pulumi.Input<double>? scoreThreshold;

  /// Creates a new [DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger].
  /// [scoreThreshold] The score range is in [0,100].
  DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger({
    this.scoreThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scoreThreshold': ?scoreThreshold};
  }

  factory DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger(
      scoreThreshold: (() {
        final guardedValue = map['scoreThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
