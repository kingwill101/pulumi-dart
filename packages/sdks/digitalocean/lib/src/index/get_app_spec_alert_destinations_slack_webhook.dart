// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecAlertDestinationsSlackWebhook {
  /// The Slack channel to send notifications to.
  final pulumi.Input<String> channel;
  /// The Slack webhook URL.
  final pulumi.Input<String> url;

  /// Creates a new [GetAppSpecAlertDestinationsSlackWebhook].
  /// [channel] The Slack channel to send notifications to.
  /// [url] The Slack webhook URL.
  GetAppSpecAlertDestinationsSlackWebhook({
    required this.channel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'url': url,
    };
  }

  factory GetAppSpecAlertDestinationsSlackWebhook.fromMap(Map<String, dynamic> map) {
    return GetAppSpecAlertDestinationsSlackWebhook(
      channel: (map['channel'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

