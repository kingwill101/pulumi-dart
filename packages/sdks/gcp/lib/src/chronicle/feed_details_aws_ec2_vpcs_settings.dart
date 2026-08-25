// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_aws_ec2_vpcs_settings_authentication.dart';

class FeedDetailsAwsEc2VpcsSettings {
  /// Info for username and secret based authentication.
  final pulumi.Input<FeedDetailsAwsEc2VpcsSettingsAuthentication?>? authentication;

  /// Creates a new [FeedDetailsAwsEc2VpcsSettings].
  /// [authentication] Info for username and secret based authentication.
  const FeedDetailsAwsEc2VpcsSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAwsEc2VpcsSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsAwsEc2VpcsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAwsEc2VpcsSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAwsEc2VpcsSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
