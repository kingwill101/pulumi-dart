// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_job_alert_destinations_slack_webhook.dart';

class GetAppSpecJobAlertDestinations {
  final pulumi.Input<List<String>>? emails;
  final pulumi.Input<List<GetAppSpecJobAlertDestinationsSlackWebhook>>? slackWebhooks;

  /// Creates a new [GetAppSpecJobAlertDestinations].
  /// [emails] Optional.
  /// [slackWebhooks] Optional.
  const GetAppSpecJobAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecJobAlertDestinationsSlackWebhook>, List<Map<String, dynamic>>>(slackWebhooks, (value) => pulumi.Input.encodeList<GetAppSpecJobAlertDestinationsSlackWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAppSpecJobAlertDestinations.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobAlertDestinations(
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slackWebhooks: (() { final guardedValue = map['slackWebhooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecJobAlertDestinationsSlackWebhook>(guardedValue, (value) => GetAppSpecJobAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

