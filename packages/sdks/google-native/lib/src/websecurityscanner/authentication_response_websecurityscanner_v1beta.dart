// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_account_response_websecurityscanner_v1beta.dart';
import 'google_account_response_websecurityscanner_v1beta.dart';
import 'iap_credential_response_websecurityscanner_v1beta.dart';

/// Scan authentication configuration.
class AuthenticationResponseWebsecurityscannerV1beta {
  /// Authentication using a custom account.
  final pulumi.Input<CustomAccountResponseWebsecurityscannerV1beta> customAccount;
  /// Authentication using a Google account.
  final pulumi.Input<GoogleAccountResponseWebsecurityscannerV1beta> googleAccount;
  /// Authentication using Identity-Aware-Proxy (IAP).
  final pulumi.Input<IapCredentialResponseWebsecurityscannerV1beta> iapCredential;

  /// Creates a new [AuthenticationResponseWebsecurityscannerV1beta].
  /// [customAccount] Authentication using a custom account.
  /// [googleAccount] Authentication using a Google account.
  /// [iapCredential] Authentication using Identity-Aware-Proxy (IAP).
  const AuthenticationResponseWebsecurityscannerV1beta({
    required this.customAccount,
    required this.googleAccount,
    required this.iapCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAccount': pulumi.Input.mapInputValue<CustomAccountResponseWebsecurityscannerV1beta, Map<String, dynamic>>(customAccount, (value) => value.toMap()),
      'googleAccount': pulumi.Input.mapInputValue<GoogleAccountResponseWebsecurityscannerV1beta, Map<String, dynamic>>(googleAccount, (value) => value.toMap()),
      'iapCredential': pulumi.Input.mapInputValue<IapCredentialResponseWebsecurityscannerV1beta, Map<String, dynamic>>(iapCredential, (value) => value.toMap()),
    };
  }

  factory AuthenticationResponseWebsecurityscannerV1beta.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponseWebsecurityscannerV1beta(
      customAccount: pulumi.Input.fromValue(CustomAccountResponseWebsecurityscannerV1beta.fromMap((map['customAccount']! as Map).cast<String, dynamic>())),
      googleAccount: pulumi.Input.fromValue(GoogleAccountResponseWebsecurityscannerV1beta.fromMap((map['googleAccount']! as Map).cast<String, dynamic>())),
      iapCredential: pulumi.Input.fromValue(IapCredentialResponseWebsecurityscannerV1beta.fromMap((map['iapCredential']! as Map).cast<String, dynamic>())),
    );
  }
}
