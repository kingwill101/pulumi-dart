// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UptimeAlertNotificationSlack {
  /// The Slack channel to send alerts to.
  final pulumi.Input<String> channel;
  /// The webhook URL for Slack.
  final pulumi.Input<String> url;

  /// Creates a new [UptimeAlertNotificationSlack].
  /// [channel] The Slack channel to send alerts to.
  /// [url] The webhook URL for Slack.
  const UptimeAlertNotificationSlack({
    required this.channel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'url': url,
    };
  }

  factory UptimeAlertNotificationSlack.fromMap(Map<String, dynamic> map) {
    return UptimeAlertNotificationSlack(
      channel: pulumi.Input.fromValue(map['channel'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

