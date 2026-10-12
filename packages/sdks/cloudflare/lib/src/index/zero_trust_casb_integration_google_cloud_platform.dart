// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_integration_google_cloud_platform_google_cloud_platform_service_account.dart';

class ZeroTrustCasbIntegrationGoogleCloudPlatform {
  /// Authenticate with a service account key.
  final pulumi.Input<ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccount?>? googleCloudPlatformServiceAccount;

  /// Creates a new [ZeroTrustCasbIntegrationGoogleCloudPlatform].
  /// [googleCloudPlatformServiceAccount] Authenticate with a service account key.
  const ZeroTrustCasbIntegrationGoogleCloudPlatform({
    this.googleCloudPlatformServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleCloudPlatformServiceAccount': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccount, Map<String, dynamic>>(googleCloudPlatformServiceAccount, (value) => value.toMap()),
    };
  }

  factory ZeroTrustCasbIntegrationGoogleCloudPlatform.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationGoogleCloudPlatform(
      googleCloudPlatformServiceAccount: (() { final guardedValue = map['googleCloudPlatformServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
