// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsHttpsPushAmazonKinesisFirehoseSettings {
  /// Delimiter to split on for the feed.
  final pulumi.Input<String>? splitDelimiter;

  /// Creates a new [FeedDetailsHttpsPushAmazonKinesisFirehoseSettings].
  /// [splitDelimiter] Delimiter to split on for the feed.
  const FeedDetailsHttpsPushAmazonKinesisFirehoseSettings({
    this.splitDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'splitDelimiter': ?splitDelimiter,
    };
  }

  factory FeedDetailsHttpsPushAmazonKinesisFirehoseSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsHttpsPushAmazonKinesisFirehoseSettings(
      splitDelimiter: (() { final guardedValue = map['splitDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
