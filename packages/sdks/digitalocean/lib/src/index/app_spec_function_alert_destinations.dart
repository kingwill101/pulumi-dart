// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_function_alert_destinations_slack_webhook.dart';

class AppSpecFunctionAlertDestinations {
  /// Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  final pulumi.Input<List<String>>? emails;
  /// Determines which slack channels or users receive alerts.
  final pulumi.Input<List<AppSpecFunctionAlertDestinationsSlackWebhook>>? slackWebhooks;

  /// Creates a new [AppSpecFunctionAlertDestinations].
  /// [emails] Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  /// [slackWebhooks] Determines which slack channels or users receive alerts.
  const AppSpecFunctionAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?pulumi.Input.mapOptionalInputValue<List<AppSpecFunctionAlertDestinationsSlackWebhook>, List<Map<String, dynamic>>>(slackWebhooks, (value) => pulumi.Input.encodeList<AppSpecFunctionAlertDestinationsSlackWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppSpecFunctionAlertDestinations.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionAlertDestinations(
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slackWebhooks: (() { final guardedValue = map['slackWebhooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppSpecFunctionAlertDestinationsSlackWebhook>(guardedValue, (value) => AppSpecFunctionAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

