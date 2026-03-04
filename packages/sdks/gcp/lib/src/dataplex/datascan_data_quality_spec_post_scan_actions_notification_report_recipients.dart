// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecPostScanActionsNotificationReportRecipients {
  /// The email recipients who will receive the DataQualityScan results report.
  final pulumi.Input<List<String>>? emails;

  /// Creates a new [DatascanDataQualitySpecPostScanActionsNotificationReportRecipients].
  /// [emails] The email recipients who will receive the DataQualityScan results report.
  DatascanDataQualitySpecPostScanActionsNotificationReportRecipients({
    this.emails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'emails': ?emails};
  }

  factory DatascanDataQualitySpecPostScanActionsNotificationReportRecipients.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatascanDataQualitySpecPostScanActionsNotificationReportRecipients(
      emails: (() {
        final guardedValue = map['emails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
