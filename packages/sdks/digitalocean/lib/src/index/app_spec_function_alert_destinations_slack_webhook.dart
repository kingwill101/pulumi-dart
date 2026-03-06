// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecFunctionAlertDestinationsSlackWebhook {
  /// The Slack channel to send notifications to.
  final pulumi.Input<String> channel;
  /// The Slack webhook URL.
  final pulumi.Input<String> url;

  /// Creates a new [AppSpecFunctionAlertDestinationsSlackWebhook].
  /// [channel] The Slack channel to send notifications to.
  /// [url] The Slack webhook URL.
  const AppSpecFunctionAlertDestinationsSlackWebhook({
    required this.channel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'url': url,
    };
  }

  factory AppSpecFunctionAlertDestinationsSlackWebhook.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionAlertDestinationsSlackWebhook(
      channel: pulumi.Input.fromValue(map['channel'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

