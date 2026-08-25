// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_aws_ec2_hosts_settings_authentication.dart';

class FeedDetailsAwsEc2HostsSettings {
  /// Info for username and secret based authentication.
  final pulumi.Input<FeedDetailsAwsEc2HostsSettingsAuthentication?>? authentication;

  /// Creates a new [FeedDetailsAwsEc2HostsSettings].
  /// [authentication] Info for username and secret based authentication.
  const FeedDetailsAwsEc2HostsSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAwsEc2HostsSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsAwsEc2HostsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAwsEc2HostsSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAwsEc2HostsSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
