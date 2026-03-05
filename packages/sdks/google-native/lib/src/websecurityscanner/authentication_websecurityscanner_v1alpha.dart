// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_account_websecurityscanner_v1alpha.dart';
import 'google_account_websecurityscanner_v1alpha.dart';

/// Scan authentication configuration.
class AuthenticationWebsecurityscannerV1alpha {
  /// Authentication using a custom account.
  final pulumi.Input<CustomAccountWebsecurityscannerV1alpha>? customAccount;
  /// Authentication using a Google account.
  final pulumi.Input<GoogleAccountWebsecurityscannerV1alpha>? googleAccount;

  /// Creates a new [AuthenticationWebsecurityscannerV1alpha].
  /// [customAccount] Authentication using a custom account.
  /// [googleAccount] Authentication using a Google account.
  AuthenticationWebsecurityscannerV1alpha({
    this.customAccount,
    this.googleAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAccount': ?pulumi.Input.mapOptionalInputValue<CustomAccountWebsecurityscannerV1alpha, Map<String, dynamic>>(customAccount, (value) => value.toMap()),
      'googleAccount': ?pulumi.Input.mapOptionalInputValue<GoogleAccountWebsecurityscannerV1alpha, Map<String, dynamic>>(googleAccount, (value) => value.toMap()),
    };
  }

  factory AuthenticationWebsecurityscannerV1alpha.fromMap(Map<String, dynamic> map) {
    return AuthenticationWebsecurityscannerV1alpha(
      customAccount: (() { final guardedValue = map['customAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomAccountWebsecurityscannerV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleAccount: (() { final guardedValue = map['googleAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleAccountWebsecurityscannerV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

