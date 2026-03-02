// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_account.dart';
import 'google_account.dart';
import 'iap_credential.dart';

/// Scan authentication configuration.
class Authentication {
  /// Authentication using a custom account.
  final pulumi.Input<CustomAccount>? customAccount;
  /// Authentication using a Google account.
  final pulumi.Input<GoogleAccount>? googleAccount;
  /// Authentication using Identity-Aware-Proxy (IAP).
  final pulumi.Input<IapCredential>? iapCredential;

  /// Creates a new [Authentication].
  /// [customAccount] Authentication using a custom account.
  /// [googleAccount] Authentication using a Google account.
  /// [iapCredential] Authentication using Identity-Aware-Proxy (IAP).
  Authentication({
    this.customAccount,
    this.googleAccount,
    this.iapCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAccount': ?pulumi.Input.mapOptionalInputValue<CustomAccount, Map<String, dynamic>>(customAccount, (value) => value.toMap()),
      'googleAccount': ?pulumi.Input.mapOptionalInputValue<GoogleAccount, Map<String, dynamic>>(googleAccount, (value) => value.toMap()),
      'iapCredential': ?pulumi.Input.mapOptionalInputValue<IapCredential, Map<String, dynamic>>(iapCredential, (value) => value.toMap()),
    };
  }

  factory Authentication.fromMap(Map<String, dynamic> map) {
    return Authentication(
      customAccount: map['customAccount'] == null ? null : (CustomAccount.fromMap((map['customAccount'] as Map).cast<String, dynamic>())).input(),
      googleAccount: map['googleAccount'] == null ? null : (GoogleAccount.fromMap((map['googleAccount'] as Map).cast<String, dynamic>())).input(),
      iapCredential: map['iapCredential'] == null ? null : (IapCredential.fromMap((map['iapCredential'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

