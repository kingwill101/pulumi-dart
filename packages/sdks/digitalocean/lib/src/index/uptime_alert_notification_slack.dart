// ignore_for_file: unused_element, unnecessary_cast


class UptimeAlertNotificationSlack {
  /// The Slack channel to send alerts to.
  final String channel;
  /// The webhook URL for Slack.
  final String url;

  /// Creates a new [UptimeAlertNotificationSlack].
  /// [channel] The Slack channel to send alerts to.
  /// [url] The webhook URL for Slack.
  UptimeAlertNotificationSlack({
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
      channel: map['channel'] as String,
      url: map['url'] as String,
    );
  }
}

