// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_google_cloud_identity_device_users_settings_authentication.dart';

class FeedDetailsGoogleCloudIdentityDeviceUsersSettings {
  /// OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthentication>? authentication;

  /// Creates a new [FeedDetailsGoogleCloudIdentityDeviceUsersSettings].
  /// [authentication] OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  const FeedDetailsGoogleCloudIdentityDeviceUsersSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsGoogleCloudIdentityDeviceUsersSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsGoogleCloudIdentityDeviceUsersSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
