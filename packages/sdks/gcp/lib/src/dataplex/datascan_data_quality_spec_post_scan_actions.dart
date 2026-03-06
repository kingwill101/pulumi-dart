// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_quality_spec_post_scan_actions_bigquery_export.dart';
import 'datascan_data_quality_spec_post_scan_actions_notification_report.dart';

class DatascanDataQualitySpecPostScanActions {
  /// If set, results will be exported to the provided BigQuery table.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecPostScanActionsBigqueryExport>? bigqueryExport;
  /// The configuration of notification report post scan action.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecPostScanActionsNotificationReport>? notificationReport;

  /// Creates a new [DatascanDataQualitySpecPostScanActions].
  /// [bigqueryExport] If set, results will be exported to the provided BigQuery table.
  /// [notificationReport] The configuration of notification report post scan action.
  const DatascanDataQualitySpecPostScanActions({
    this.bigqueryExport,
    this.notificationReport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryExport': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecPostScanActionsBigqueryExport, Map<String, dynamic>>(bigqueryExport, (value) => value.toMap()),
      'notificationReport': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecPostScanActionsNotificationReport, Map<String, dynamic>>(notificationReport, (value) => value.toMap()),
    };
  }

  factory DatascanDataQualitySpecPostScanActions.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecPostScanActions(
      bigqueryExport: (() { final guardedValue = map['bigqueryExport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecPostScanActionsBigqueryExport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationReport: (() { final guardedValue = map['notificationReport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecPostScanActionsNotificationReport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

