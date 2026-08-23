// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_amazon_s3_settings_authentication.dart';

class FeedDetailsAmazonS3Settings {
  /// Amazon S3 auth.
  final pulumi.Input<FeedDetailsAmazonS3SettingsAuthentication>? authentication;
  /// S3 URI.
  final pulumi.Input<String> s3Uri;
  /// Possible values:
  /// SOURCE_DELETION_NEVER
  /// SOURCE_DELETION_ON_SUCCESS
  /// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
  final pulumi.Input<String> sourceDeletionOption;
  /// Possible values:
  /// FILES
  /// FOLDERS
  /// FOLDERS_RECURSIVE
  final pulumi.Input<String> sourceType;

  /// Creates a new [FeedDetailsAmazonS3Settings].
  /// [authentication] Amazon S3 auth.
  /// [s3Uri] S3 URI.
  /// [sourceDeletionOption] Possible values:
  /// [sourceType] Possible values:
  const FeedDetailsAmazonS3Settings({
    this.authentication,
    required this.s3Uri,
    required this.sourceDeletionOption,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonS3SettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      's3Uri': s3Uri,
      'sourceDeletionOption': sourceDeletionOption,
      'sourceType': sourceType,
    };
  }

  factory FeedDetailsAmazonS3Settings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonS3Settings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonS3SettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
      sourceDeletionOption: pulumi.Input.fromValue(map['sourceDeletionOption'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}
