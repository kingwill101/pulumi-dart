// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_worker_alert_destinations_slack_webhook.dart';

class GetAppSpecWorkerAlertDestinations {
  final pulumi.Input<List<String>>? emails;
  final pulumi.Input<List<GetAppSpecWorkerAlertDestinationsSlackWebhook>>? slackWebhooks;

  /// Creates a new [GetAppSpecWorkerAlertDestinations].
  /// [emails] Optional.
  /// [slackWebhooks] Optional.
  GetAppSpecWorkerAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecWorkerAlertDestinationsSlackWebhook>, List<Map<String, dynamic>>>(slackWebhooks, (value) => pulumi.Input.encodeList<GetAppSpecWorkerAlertDestinationsSlackWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAppSpecWorkerAlertDestinations.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerAlertDestinations(
      emails: map['emails'] == null ? null : ((map['emails'] as List).cast<String>()).input(),
      slackWebhooks: map['slackWebhooks'] == null ? null : (pulumi.Input.decodeList<GetAppSpecWorkerAlertDestinationsSlackWebhook>(map['slackWebhooks'], (value) => GetAppSpecWorkerAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

