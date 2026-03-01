// ignore_for_file: unused_element, unnecessary_cast


class DatascanDataQualitySpecPostScanActionsNotificationReportRecipients {
  /// The email recipients who will receive the DataQualityScan results report.
  final List<String>? emails;

  /// Creates a new [DatascanDataQualitySpecPostScanActionsNotificationReportRecipients].
  /// [emails] The email recipients who will receive the DataQualityScan results report.
  DatascanDataQualitySpecPostScanActionsNotificationReportRecipients({
    this.emails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
    };
  }

  factory DatascanDataQualitySpecPostScanActionsNotificationReportRecipients.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecPostScanActionsNotificationReportRecipients(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
    );
  }
}

