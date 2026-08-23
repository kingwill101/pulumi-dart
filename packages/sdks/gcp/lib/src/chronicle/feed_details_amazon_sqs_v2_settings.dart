// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_amazon_sqs_v2_settings_authentication.dart';

class FeedDetailsAmazonSqsV2Settings {
  /// A message containing fields used to authenticate with Amazon SQS.
  final pulumi.Input<FeedDetailsAmazonSqsV2SettingsAuthentication> authentication;
  /// SA that will read data, this is Storage Transfer Service SA of Customer's
  /// Tenancy Project.
  final pulumi.Input<String>? chronicleServiceAccount;
  /// Maximum File Age to ingest in days.
  final pulumi.Input<int>? maxLookbackDays;
  /// Amazon Resource Name(ARN) of the queue.
  final pulumi.Input<String> queue;
  /// S3 URI.
  final pulumi.Input<String> s3Uri;
  /// Possible values:
  /// NEVER
  /// ON_SUCCESS
  final pulumi.Input<String>? sourceDeletionOption;

  /// Creates a new [FeedDetailsAmazonSqsV2Settings].
  /// [authentication] A message containing fields used to authenticate with Amazon SQS.
  /// [chronicleServiceAccount] SA that will read data, this is Storage Transfer Service SA of Customer's
  /// [maxLookbackDays] Maximum File Age to ingest in days.
  /// [queue] Amazon Resource Name(ARN) of the queue.
  /// [s3Uri] S3 URI.
  /// [sourceDeletionOption] Possible values:
  const FeedDetailsAmazonSqsV2Settings({
    required this.authentication,
    this.chronicleServiceAccount,
    this.maxLookbackDays,
    required this.queue,
    required this.s3Uri,
    this.sourceDeletionOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<FeedDetailsAmazonSqsV2SettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'chronicleServiceAccount': ?chronicleServiceAccount,
      'maxLookbackDays': ?maxLookbackDays,
      'queue': queue,
      's3Uri': s3Uri,
      'sourceDeletionOption': ?sourceDeletionOption,
    };
  }

  factory FeedDetailsAmazonSqsV2Settings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonSqsV2Settings(
      authentication: pulumi.Input.fromValue(FeedDetailsAmazonSqsV2SettingsAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      chronicleServiceAccount: (() { final guardedValue = map['chronicleServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxLookbackDays: (() { final guardedValue = map['maxLookbackDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      queue: pulumi.Input.fromValue(map['queue'] as String),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
