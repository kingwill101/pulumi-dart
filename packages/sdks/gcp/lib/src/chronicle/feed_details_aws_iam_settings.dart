// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_aws_iam_settings_authentication.dart';

class FeedDetailsAwsIamSettings {
  /// Supported AWS IAM api type.
  /// Possible values:
  /// USERS
  /// ROLES
  /// GROUPS
  final pulumi.Input<String>? apiType;
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAwsIamSettingsAuthentication>? authentication;

  /// Creates a new [FeedDetailsAwsIamSettings].
  /// [apiType] Supported AWS IAM api type.
  /// [authentication] Info for username and secret based authentication.
  const FeedDetailsAwsIamSettings({
    this.apiType,
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiType': ?apiType,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAwsIamSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsAwsIamSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAwsIamSettings(
      apiType: (() { final guardedValue = map['apiType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAwsIamSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
