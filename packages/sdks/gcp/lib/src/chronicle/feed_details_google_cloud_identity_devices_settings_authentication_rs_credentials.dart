// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationRsCredentials {
  /// Private key in PEM format.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? privateKey;

  /// Creates a new [FeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationRsCredentials].
  /// [privateKey] Private key in PEM format.
  const FeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
    };
  }

  factory FeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationRsCredentials.fromMap(Map<String, dynamic> map) {
    return FeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationRsCredentials(
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
