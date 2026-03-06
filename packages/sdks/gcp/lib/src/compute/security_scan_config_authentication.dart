// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_scan_config_authentication_custom_account.dart';
import 'security_scan_config_authentication_google_account.dart';

class SecurityScanConfigAuthentication {
  /// Describes authentication configuration that uses a custom account.
  /// Structure is documented below.
  final pulumi.Input<SecurityScanConfigAuthenticationCustomAccount>? customAccount;
  /// Describes authentication configuration that uses a Google account.
  /// Structure is documented below.
  final pulumi.Input<SecurityScanConfigAuthenticationGoogleAccount>? googleAccount;

  /// Creates a new [SecurityScanConfigAuthentication].
  /// [customAccount] Describes authentication configuration that uses a custom account.
  /// [googleAccount] Describes authentication configuration that uses a Google account.
  const SecurityScanConfigAuthentication({
    this.customAccount,
    this.googleAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAccount': ?pulumi.Input.mapOptionalInputValue<SecurityScanConfigAuthenticationCustomAccount, Map<String, dynamic>>(customAccount, (value) => value.toMap()),
      'googleAccount': ?pulumi.Input.mapOptionalInputValue<SecurityScanConfigAuthenticationGoogleAccount, Map<String, dynamic>>(googleAccount, (value) => value.toMap()),
    };
  }

  factory SecurityScanConfigAuthentication.fromMap(Map<String, dynamic> map) {
    return SecurityScanConfigAuthentication(
      customAccount: (() { final guardedValue = map['customAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityScanConfigAuthenticationCustomAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleAccount: (() { final guardedValue = map['googleAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityScanConfigAuthenticationGoogleAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

