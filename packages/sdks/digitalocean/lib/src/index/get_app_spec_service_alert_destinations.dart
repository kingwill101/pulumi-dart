// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_service_alert_destinations_slack_webhook.dart';

class GetAppSpecServiceAlertDestinations {
  final List<String>? emails;
  final List<GetAppSpecServiceAlertDestinationsSlackWebhook>? slackWebhooks;

  /// Creates a new [GetAppSpecServiceAlertDestinations].
  /// [emails] Optional.
  /// [slackWebhooks] Optional.
  GetAppSpecServiceAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?slackWebhooks == null ? null : pulumi.Input.encodeList<GetAppSpecServiceAlertDestinationsSlackWebhook, Map<String, dynamic>>(slackWebhooks!, (value) => value.toMap()),
    };
  }

  factory GetAppSpecServiceAlertDestinations.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceAlertDestinations(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
      slackWebhooks: map['slackWebhooks'] == null ? null : pulumi.Input.decodeList<GetAppSpecServiceAlertDestinationsSlackWebhook>(map['slackWebhooks'], (value) => GetAppSpecServiceAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

