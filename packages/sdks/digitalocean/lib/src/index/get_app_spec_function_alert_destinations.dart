// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_function_alert_destinations_slack_webhook.dart';

class GetAppSpecFunctionAlertDestinations {
  final pulumi.Input<List<String>>? emails;
  final pulumi.Input<List<GetAppSpecFunctionAlertDestinationsSlackWebhook>>? slackWebhooks;

  /// Creates a new [GetAppSpecFunctionAlertDestinations].
  /// [emails] Optional.
  /// [slackWebhooks] Optional.
  const GetAppSpecFunctionAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecFunctionAlertDestinationsSlackWebhook>, List<Map<String, dynamic>>>(slackWebhooks, (value) => pulumi.Input.encodeList<GetAppSpecFunctionAlertDestinationsSlackWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAppSpecFunctionAlertDestinations.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionAlertDestinations(
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slackWebhooks: (() { final guardedValue = map['slackWebhooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecFunctionAlertDestinationsSlackWebhook>(guardedValue, (value) => GetAppSpecFunctionAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
