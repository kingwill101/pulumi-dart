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
      customAccount: map['customAccount'] == null ? null : (CustomAccountWebsecurityscannerV1alpha.fromMap((map['customAccount']! as Map).cast<String, dynamic>())).input(),
      googleAccount: map['googleAccount'] == null ? null : (GoogleAccountWebsecurityscannerV1alpha.fromMap((map['googleAccount']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

