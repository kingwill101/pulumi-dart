// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_alert_destinations_slack_webhook.dart';

class GetAppSpecAlertDestinations {
  final List<String>? emails;
  final List<GetAppSpecAlertDestinationsSlackWebhook>? slackWebhooks;

  /// Creates a new [GetAppSpecAlertDestinations].
  /// [emails] Optional.
  /// [slackWebhooks] Optional.
  GetAppSpecAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?slackWebhooks == null ? null : pulumi.Input.encodeList<GetAppSpecAlertDestinationsSlackWebhook, Map<String, dynamic>>(slackWebhooks!, (value) => value.toMap()),
    };
  }

  factory GetAppSpecAlertDestinations.fromMap(Map<String, dynamic> map) {
    return GetAppSpecAlertDestinations(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
      slackWebhooks: map['slackWebhooks'] == null ? null : pulumi.Input.decodeList<GetAppSpecAlertDestinationsSlackWebhook>(map['slackWebhooks'], (value) => GetAppSpecAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

