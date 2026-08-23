// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_account_websecurityscanner_v1beta.dart';
import 'google_account_websecurityscanner_v1beta.dart';
import 'iap_credential_websecurityscanner_v1beta.dart';

/// Scan authentication configuration.
class AuthenticationWebsecurityscannerV1beta {
  /// Authentication using a custom account.
  final pulumi.Input<CustomAccountWebsecurityscannerV1beta>? customAccount;
  /// Authentication using a Google account.
  final pulumi.Input<GoogleAccountWebsecurityscannerV1beta>? googleAccount;
  /// Authentication using Identity-Aware-Proxy (IAP).
  final pulumi.Input<IapCredentialWebsecurityscannerV1beta>? iapCredential;

  /// Creates a new [AuthenticationWebsecurityscannerV1beta].
  /// [customAccount] Authentication using a custom account.
  /// [googleAccount] Authentication using a Google account.
  /// [iapCredential] Authentication using Identity-Aware-Proxy (IAP).
  const AuthenticationWebsecurityscannerV1beta({
    this.customAccount,
    this.googleAccount,
    this.iapCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAccount': ?pulumi.Input.mapOptionalInputValue<CustomAccountWebsecurityscannerV1beta, Map<String, dynamic>>(customAccount, (value) => value.toMap()),
      'googleAccount': ?pulumi.Input.mapOptionalInputValue<GoogleAccountWebsecurityscannerV1beta, Map<String, dynamic>>(googleAccount, (value) => value.toMap()),
      'iapCredential': ?pulumi.Input.mapOptionalInputValue<IapCredentialWebsecurityscannerV1beta, Map<String, dynamic>>(iapCredential, (value) => value.toMap()),
    };
  }

  factory AuthenticationWebsecurityscannerV1beta.fromMap(Map<String, dynamic> map) {
    return AuthenticationWebsecurityscannerV1beta(
      customAccount: (() { final guardedValue = map['customAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomAccountWebsecurityscannerV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleAccount: (() { final guardedValue = map['googleAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleAccountWebsecurityscannerV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iapCredential: (() { final guardedValue = map['iapCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IapCredentialWebsecurityscannerV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
