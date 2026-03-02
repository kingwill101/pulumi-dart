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
  AuthenticationWebsecurityscannerV1beta({
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
      customAccount: map['customAccount'] == null ? null : (CustomAccountWebsecurityscannerV1beta.fromMap((map['customAccount']! as Map).cast<String, dynamic>())).input(),
      googleAccount: map['googleAccount'] == null ? null : (GoogleAccountWebsecurityscannerV1beta.fromMap((map['googleAccount']! as Map).cast<String, dynamic>())).input(),
      iapCredential: map['iapCredential'] == null ? null : (IapCredentialWebsecurityscannerV1beta.fromMap((map['iapCredential']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

