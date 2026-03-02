// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_account_response.dart';
import 'google_account_response.dart';
import 'iap_credential_response.dart';

/// Scan authentication configuration.
class AuthenticationResponse {
  /// Authentication using a custom account.
  final pulumi.Input<CustomAccountResponse> customAccount;
  /// Authentication using a Google account.
  final pulumi.Input<GoogleAccountResponse> googleAccount;
  /// Authentication using Identity-Aware-Proxy (IAP).
  final pulumi.Input<IapCredentialResponse> iapCredential;

  /// Creates a new [AuthenticationResponse].
  /// [customAccount] Authentication using a custom account.
  /// [googleAccount] Authentication using a Google account.
  /// [iapCredential] Authentication using Identity-Aware-Proxy (IAP).
  AuthenticationResponse({
    required this.customAccount,
    required this.googleAccount,
    required this.iapCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAccount': pulumi.Input.mapInputValue<CustomAccountResponse, Map<String, dynamic>>(customAccount, (value) => value.toMap()),
      'googleAccount': pulumi.Input.mapInputValue<GoogleAccountResponse, Map<String, dynamic>>(googleAccount, (value) => value.toMap()),
      'iapCredential': pulumi.Input.mapInputValue<IapCredentialResponse, Map<String, dynamic>>(iapCredential, (value) => value.toMap()),
    };
  }

  factory AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse(
      customAccount: (CustomAccountResponse.fromMap((map['customAccount'] as Map).cast<String, dynamic>())).input(),
      googleAccount: (GoogleAccountResponse.fromMap((map['googleAccount'] as Map).cast<String, dynamic>())).input(),
      iapCredential: (IapCredentialResponse.fromMap((map['iapCredential'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

