// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsGcsV2Settings {
  /// Google Cloud Storage Bucket URI for the feed.
  final pulumi.Input<String> bucketUri;
  /// SA that will read data, this is Storage Transfer Service SA of Customer's
  /// Tenancy Project.
  final pulumi.Input<String>? chronicleServiceAccount;
  /// Maximum File Age to ingest in days.
  final pulumi.Input<int>? maxLookbackDays;
  /// Possible values:
  /// NEVER
  /// ON_SUCCESS
  final pulumi.Input<String>? sourceDeletionOption;

  /// Creates a new [FeedDetailsGcsV2Settings].
  /// [bucketUri] Google Cloud Storage Bucket URI for the feed.
  /// [chronicleServiceAccount] SA that will read data, this is Storage Transfer Service SA of Customer's
  /// [maxLookbackDays] Maximum File Age to ingest in days.
  /// [sourceDeletionOption] Possible values:
  const FeedDetailsGcsV2Settings({
    required this.bucketUri,
    this.chronicleServiceAccount,
    this.maxLookbackDays,
    this.sourceDeletionOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketUri': bucketUri,
      'chronicleServiceAccount': ?chronicleServiceAccount,
      'maxLookbackDays': ?maxLookbackDays,
      'sourceDeletionOption': ?sourceDeletionOption,
    };
  }

  factory FeedDetailsGcsV2Settings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsGcsV2Settings(
      bucketUri: pulumi.Input.fromValue(map['bucketUri'] as String),
      chronicleServiceAccount: (() { final guardedValue = map['chronicleServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxLookbackDays: (() { final guardedValue = map['maxLookbackDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
