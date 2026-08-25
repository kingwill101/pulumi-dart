// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_amazon_s3_v2_settings_authentication.dart';

class FeedDetailsAmazonS3V2Settings {
  /// A message containing fields used to authenticate with Amazon S3.
  final pulumi.Input<FeedDetailsAmazonS3V2SettingsAuthentication> authentication;
  /// SA that will read data, this is Storage Transfer Service SA of Customer's
  /// Tenancy Project.
  final pulumi.Input<String?>? chronicleServiceAccount;
  /// Maximum File Age to ingest in days.
  final pulumi.Input<int?>? maxLookbackDays;
  /// S3 URI.
  final pulumi.Input<String> s3Uri;
  /// Possible values:
  /// NEVER
  /// ON_SUCCESS
  final pulumi.Input<String?>? sourceDeletionOption;

  /// Creates a new [FeedDetailsAmazonS3V2Settings].
  /// [authentication] A message containing fields used to authenticate with Amazon S3.
  /// [chronicleServiceAccount] SA that will read data, this is Storage Transfer Service SA of Customer's
  /// [maxLookbackDays] Maximum File Age to ingest in days.
  /// [s3Uri] S3 URI.
  /// [sourceDeletionOption] Possible values:
  const FeedDetailsAmazonS3V2Settings({
    required this.authentication,
    this.chronicleServiceAccount,
    this.maxLookbackDays,
    required this.s3Uri,
    this.sourceDeletionOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<FeedDetailsAmazonS3V2SettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'chronicleServiceAccount': ?chronicleServiceAccount,
      'maxLookbackDays': ?maxLookbackDays,
      's3Uri': s3Uri,
      'sourceDeletionOption': ?sourceDeletionOption,
    };
  }

  factory FeedDetailsAmazonS3V2Settings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonS3V2Settings(
      authentication: pulumi.Input.fromValue(FeedDetailsAmazonS3V2SettingsAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      chronicleServiceAccount: (() { final guardedValue = map['chronicleServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxLookbackDays: (() { final guardedValue = map['maxLookbackDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
