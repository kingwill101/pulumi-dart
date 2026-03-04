// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorAlertAlertsSlack {
  /// The Slack channel to send alerts to
  final pulumi.Input<String> channel;

  /// The webhook URL for Slack
  final pulumi.Input<String> url;

  /// Creates a new [MonitorAlertAlertsSlack].
  /// [channel] The Slack channel to send alerts to
  /// [url] The webhook URL for Slack
  MonitorAlertAlertsSlack({required this.channel, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'channel': channel, 'url': url};
  }

  factory MonitorAlertAlertsSlack.fromMap(Map<String, dynamic> map) {
    return MonitorAlertAlertsSlack(
      channel: pulumi.Input.fromValue(map['channel'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
