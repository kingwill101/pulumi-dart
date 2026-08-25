// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsHttpsPushWebhookSettings {
  /// Delimiter to split on for the feed.
  final pulumi.Input<String?>? splitDelimiter;

  /// Creates a new [FeedDetailsHttpsPushWebhookSettings].
  /// [splitDelimiter] Delimiter to split on for the feed.
  const FeedDetailsHttpsPushWebhookSettings({
    this.splitDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'splitDelimiter': ?splitDelimiter,
    };
  }

  factory FeedDetailsHttpsPushWebhookSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsHttpsPushWebhookSettings(
      splitDelimiter: (() { final guardedValue = map['splitDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
