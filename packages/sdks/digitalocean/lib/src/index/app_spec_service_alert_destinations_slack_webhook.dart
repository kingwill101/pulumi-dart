// ignore_for_file: unused_element, unnecessary_cast


class AppSpecServiceAlertDestinationsSlackWebhook {
  /// The Slack channel to send notifications to.
  final String channel;
  /// The Slack webhook URL.
  final String url;

  /// Creates a new [AppSpecServiceAlertDestinationsSlackWebhook].
  /// [channel] The Slack channel to send notifications to.
  /// [url] The Slack webhook URL.
  AppSpecServiceAlertDestinationsSlackWebhook({
    required this.channel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'url': url,
    };
  }

  factory AppSpecServiceAlertDestinationsSlackWebhook.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceAlertDestinationsSlackWebhook(
      channel: map['channel'] as String,
      url: map['url'] as String,
    );
  }
}

