// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecFunctionAlertDestinationsSlackWebhook {
  /// The Slack channel to send notifications to.
  final String channel;
  /// The Slack webhook URL.
  final String url;

  /// Creates a new [GetAppSpecFunctionAlertDestinationsSlackWebhook].
  /// [channel] The Slack channel to send notifications to.
  /// [url] The Slack webhook URL.
  GetAppSpecFunctionAlertDestinationsSlackWebhook({
    required this.channel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'url': url,
    };
  }

  factory GetAppSpecFunctionAlertDestinationsSlackWebhook.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionAlertDestinationsSlackWebhook(
      channel: map['channel'] as String,
      url: map['url'] as String,
    );
  }
}

