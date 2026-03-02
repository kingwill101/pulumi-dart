// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_worker_alert_destinations_slack_webhook.dart';

class AppSpecWorkerAlertDestinations {
  /// Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  final pulumi.Input<List<String>>? emails;
  /// Determines which slack channels or users receive alerts.
  final pulumi.Input<List<AppSpecWorkerAlertDestinationsSlackWebhook>>? slackWebhooks;

  /// Creates a new [AppSpecWorkerAlertDestinations].
  /// [emails] Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  /// [slackWebhooks] Determines which slack channels or users receive alerts.
  AppSpecWorkerAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?pulumi.Input.mapOptionalInputValue<List<AppSpecWorkerAlertDestinationsSlackWebhook>, List<Map<String, dynamic>>>(slackWebhooks, (value) => pulumi.Input.encodeList<AppSpecWorkerAlertDestinationsSlackWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppSpecWorkerAlertDestinations.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerAlertDestinations(
      emails: map['emails'] == null ? null : ((map['emails'] as List).cast<String>()).input(),
      slackWebhooks: map['slackWebhooks'] == null ? null : (pulumi.Input.decodeList<AppSpecWorkerAlertDestinationsSlackWebhook>(map['slackWebhooks'], (value) => AppSpecWorkerAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

