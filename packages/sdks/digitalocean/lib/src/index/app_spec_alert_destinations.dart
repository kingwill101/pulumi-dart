// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_alert_destinations_slack_webhook.dart';

class AppSpecAlertDestinations {
  /// Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  final pulumi.Input<List<String>>? emails;

  /// Determines which slack channels or users receive alerts.
  final pulumi.Input<List<AppSpecAlertDestinationsSlackWebhook>>? slackWebhooks;

  /// Creates a new [AppSpecAlertDestinations].
  /// [emails] Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  /// [slackWebhooks] Determines which slack channels or users receive alerts.
  AppSpecAlertDestinations({this.emails, this.slackWebhooks});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppSpecAlertDestinationsSlackWebhook>,
            List<Map<String, dynamic>>
          >(
            slackWebhooks,
            (value) =>
                pulumi.Input.encodeList<
                  AppSpecAlertDestinationsSlackWebhook,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AppSpecAlertDestinations.fromMap(Map<String, dynamic> map) {
    return AppSpecAlertDestinations(
      emails: (() {
        final guardedValue = map['emails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      slackWebhooks: (() {
        final guardedValue = map['slackWebhooks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppSpecAlertDestinationsSlackWebhook>(
            guardedValue,
            (value) => AppSpecAlertDestinationsSlackWebhook.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
