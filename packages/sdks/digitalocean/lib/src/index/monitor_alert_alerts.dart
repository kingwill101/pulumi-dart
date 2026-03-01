// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_alert_alerts_slack.dart';

class MonitorAlertAlerts {
  /// List of email addresses to sent notifications to
  final List<String>? emails;
  final List<MonitorAlertAlertsSlack>? slacks;

  /// Creates a new [MonitorAlertAlerts].
  /// [emails] List of email addresses to sent notifications to
  /// [slacks] Optional.
  MonitorAlertAlerts({
    this.emails,
    this.slacks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slacks': ?slacks == null ? null : pulumi.Input.encodeList<MonitorAlertAlertsSlack, Map<String, dynamic>>(slacks!, (value) => value.toMap()),
    };
  }

  factory MonitorAlertAlerts.fromMap(Map<String, dynamic> map) {
    return MonitorAlertAlerts(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
      slacks: map['slacks'] == null ? null : pulumi.Input.decodeList<MonitorAlertAlertsSlack>(map['slacks'], (value) => MonitorAlertAlertsSlack.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

