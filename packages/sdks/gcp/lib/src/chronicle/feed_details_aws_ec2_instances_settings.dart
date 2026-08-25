// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_aws_ec2_instances_settings_authentication.dart';

class FeedDetailsAwsEc2InstancesSettings {
  /// Info for username and secret based authentication.
  final pulumi.Input<FeedDetailsAwsEc2InstancesSettingsAuthentication?>? authentication;

  /// Creates a new [FeedDetailsAwsEc2InstancesSettings].
  /// [authentication] Info for username and secret based authentication.
  const FeedDetailsAwsEc2InstancesSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAwsEc2InstancesSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsAwsEc2InstancesSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAwsEc2InstancesSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAwsEc2InstancesSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
