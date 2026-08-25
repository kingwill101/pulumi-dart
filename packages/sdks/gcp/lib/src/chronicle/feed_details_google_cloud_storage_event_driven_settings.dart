// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsGoogleCloudStorageEventDrivenSettings {
  /// Google Cloud Storage Bucket URI for the feed.
  final pulumi.Input<String> bucketUri;
  /// (Output)
  /// SA that will read data, this is Storage Transfer Service SA of Customer's
  /// Tenancy Project.
  final pulumi.Input<String?>? chronicleServiceAccount;
  /// Maximum File Age to ingest in days.
  final pulumi.Input<int?>? maxLookbackDays;
  /// Subscription name for pubsub topic.
  final pulumi.Input<String> pubsubSubscription;
  /// Possible values:
  /// NEVER
  /// ON_SUCCESS
  final pulumi.Input<String?>? sourceDeletionOption;

  /// Creates a new [FeedDetailsGoogleCloudStorageEventDrivenSettings].
  /// [bucketUri] Google Cloud Storage Bucket URI for the feed.
  /// [chronicleServiceAccount] (Output)
  /// [maxLookbackDays] Maximum File Age to ingest in days.
  /// [pubsubSubscription] Subscription name for pubsub topic.
  /// [sourceDeletionOption] Possible values:
  const FeedDetailsGoogleCloudStorageEventDrivenSettings({
    required this.bucketUri,
    this.chronicleServiceAccount,
    this.maxLookbackDays,
    required this.pubsubSubscription,
    this.sourceDeletionOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketUri': bucketUri,
      'chronicleServiceAccount': ?chronicleServiceAccount,
      'maxLookbackDays': ?maxLookbackDays,
      'pubsubSubscription': pubsubSubscription,
      'sourceDeletionOption': ?sourceDeletionOption,
    };
  }

  factory FeedDetailsGoogleCloudStorageEventDrivenSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsGoogleCloudStorageEventDrivenSettings(
      bucketUri: pulumi.Input.fromValue(map['bucketUri'] as String),
      chronicleServiceAccount: (() { final guardedValue = map['chronicleServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxLookbackDays: (() { final guardedValue = map['maxLookbackDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      pubsubSubscription: pulumi.Input.fromValue(map['pubsubSubscription'] as String),
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
