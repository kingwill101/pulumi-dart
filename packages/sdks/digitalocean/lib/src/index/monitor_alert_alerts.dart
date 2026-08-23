// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_alert_alerts_slack.dart';

class MonitorAlertAlerts {
  /// List of email addresses to sent notifications to
  final pulumi.Input<List<String>>? emails;
  final pulumi.Input<List<MonitorAlertAlertsSlack>>? slacks;

  /// Creates a new [MonitorAlertAlerts].
  /// [emails] List of email addresses to sent notifications to
  /// [slacks] Optional.
  const MonitorAlertAlerts({
    this.emails,
    this.slacks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slacks': ?pulumi.Input.mapOptionalInputValue<List<MonitorAlertAlertsSlack>, List<Map<String, dynamic>>>(slacks, (value) => pulumi.Input.encodeList<MonitorAlertAlertsSlack, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MonitorAlertAlerts.fromMap(Map<String, dynamic> map) {
    return MonitorAlertAlerts(
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slacks: (() { final guardedValue = map['slacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonitorAlertAlertsSlack>(guardedValue, (value) => MonitorAlertAlertsSlack.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
