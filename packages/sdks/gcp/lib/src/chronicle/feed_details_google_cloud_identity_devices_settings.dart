// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_google_cloud_identity_devices_settings_authentication.dart';

class FeedDetailsGoogleCloudIdentityDevicesSettings {
  /// API Version
  final pulumi.Input<String>? apiVersion;
  /// OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsGoogleCloudIdentityDevicesSettingsAuthentication>? authentication;

  /// Creates a new [FeedDetailsGoogleCloudIdentityDevicesSettings].
  /// [apiVersion] API Version
  /// [authentication] OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  const FeedDetailsGoogleCloudIdentityDevicesSettings({
    this.apiVersion,
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsGoogleCloudIdentityDevicesSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsGoogleCloudIdentityDevicesSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsGoogleCloudIdentityDevicesSettings(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsGoogleCloudIdentityDevicesSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
