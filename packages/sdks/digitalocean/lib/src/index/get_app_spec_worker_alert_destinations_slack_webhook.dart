// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecWorkerAlertDestinationsSlackWebhook {
  /// The Slack channel to send notifications to.
  final pulumi.Input<String> channel;
  /// The Slack webhook URL.
  final pulumi.Input<String> url;

  /// Creates a new [GetAppSpecWorkerAlertDestinationsSlackWebhook].
  /// [channel] The Slack channel to send notifications to.
  /// [url] The Slack webhook URL.
  GetAppSpecWorkerAlertDestinationsSlackWebhook({
    required this.channel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'url': url,
    };
  }

  factory GetAppSpecWorkerAlertDestinationsSlackWebhook.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerAlertDestinationsSlackWebhook(
      channel: (map['channel'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

