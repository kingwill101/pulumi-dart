// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_quality_spec_post_scan_actions_notification_report_recipients.dart';
import 'datascan_data_quality_spec_post_scan_actions_notification_report_score_threshold_trigger.dart';

class DatascanDataQualitySpecPostScanActionsNotificationReport {
  /// This trigger is triggered whenever a scan job run ends, regardless of the result.
  final pulumi.Input<Map<String, dynamic>>? jobEndTrigger;
  /// This trigger is triggered when the scan job itself fails, regardless of the result.
  final pulumi.Input<Map<String, dynamic>>? jobFailureTrigger;
  /// The individuals or groups who are designated to receive notifications upon triggers.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecPostScanActionsNotificationReportRecipients> recipients;
  /// This trigger is triggered when the DQ score in the job result is less than a specified input score.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger>? scoreThresholdTrigger;

  /// Creates a new [DatascanDataQualitySpecPostScanActionsNotificationReport].
  /// [jobEndTrigger] This trigger is triggered whenever a scan job run ends, regardless of the result.
  /// [jobFailureTrigger] This trigger is triggered when the scan job itself fails, regardless of the result.
  /// [recipients] The individuals or groups who are designated to receive notifications upon triggers.
  /// [scoreThresholdTrigger] This trigger is triggered when the DQ score in the job result is less than a specified input score.
  const DatascanDataQualitySpecPostScanActionsNotificationReport({
    this.jobEndTrigger,
    this.jobFailureTrigger,
    required this.recipients,
    this.scoreThresholdTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobEndTrigger': ?jobEndTrigger,
      'jobFailureTrigger': ?jobFailureTrigger,
      'recipients': pulumi.Input.mapInputValue<DatascanDataQualitySpecPostScanActionsNotificationReportRecipients, Map<String, dynamic>>(recipients, (value) => value.toMap()),
      'scoreThresholdTrigger': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger, Map<String, dynamic>>(scoreThresholdTrigger, (value) => value.toMap()),
    };
  }

  factory DatascanDataQualitySpecPostScanActionsNotificationReport.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecPostScanActionsNotificationReport(
      jobEndTrigger: (() { final guardedValue = map['jobEndTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      jobFailureTrigger: (() { final guardedValue = map['jobFailureTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      recipients: pulumi.Input.fromValue(DatascanDataQualitySpecPostScanActionsNotificationReportRecipients.fromMap((map['recipients']! as Map).cast<String, dynamic>())),
      scoreThresholdTrigger: (() { final guardedValue = map['scoreThresholdTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
