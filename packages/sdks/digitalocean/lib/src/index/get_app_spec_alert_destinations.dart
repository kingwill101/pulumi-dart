// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_alert_destinations_slack_webhook.dart';

class GetAppSpecAlertDestinations {
  final pulumi.Input<List<String>>? emails;
  final pulumi.Input<List<GetAppSpecAlertDestinationsSlackWebhook>>?
  slackWebhooks;

  /// Creates a new [GetAppSpecAlertDestinations].
  /// [emails] Optional.
  /// [slackWebhooks] Optional.
  GetAppSpecAlertDestinations({this.emails, this.slackWebhooks});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetAppSpecAlertDestinationsSlackWebhook>,
            List<Map<String, dynamic>>
          >(
            slackWebhooks,
            (value) =>
                pulumi.Input.encodeList<
                  GetAppSpecAlertDestinationsSlackWebhook,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetAppSpecAlertDestinations.fromMap(Map<String, dynamic> map) {
    return GetAppSpecAlertDestinations(
      emails: (() {
        final guardedValue = map['emails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      slackWebhooks: (() {
        final guardedValue = map['slackWebhooks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetAppSpecAlertDestinationsSlackWebhook>(
            guardedValue,
            (value) => GetAppSpecAlertDestinationsSlackWebhook.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
