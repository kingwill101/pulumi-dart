// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsGcsSettings {
  /// Google Cloud Storage Bucket URI for the feed.
  final pulumi.Input<String>? bucketUri;
  /// (Output)
  /// SA that will read data, this is Storage Transfer Service SA of Customer's
  /// Tenancy Project.
  final pulumi.Input<String>? chronicleServiceAccount;
  /// Possible values:
  /// NEVER
  /// ON_SUCCESS
  final pulumi.Input<String>? sourceDeletionOption;
  /// Possible values:
  /// FILES
  /// FOLDERS
  /// FOLDERS_RECURSIVE
  ///
  /// &lt;a name="nestedDetailsGcsV2Settings"&gt;&lt;/a&gt;The `gcsV2Settings` block supports:
  final pulumi.Input<String>? sourceType;

  /// Creates a new [FeedDetailsGcsSettings].
  /// [bucketUri] Google Cloud Storage Bucket URI for the feed.
  /// [chronicleServiceAccount] (Output)
  /// [sourceDeletionOption] Possible values:
  /// [sourceType] Possible values:
  const FeedDetailsGcsSettings({
    this.bucketUri,
    this.chronicleServiceAccount,
    this.sourceDeletionOption,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketUri': ?bucketUri,
      'chronicleServiceAccount': ?chronicleServiceAccount,
      'sourceDeletionOption': ?sourceDeletionOption,
      'sourceType': ?sourceType,
    };
  }

  factory FeedDetailsGcsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsGcsSettings(
      bucketUri: (() { final guardedValue = map['bucketUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chronicleServiceAccount: (() { final guardedValue = map['chronicleServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
