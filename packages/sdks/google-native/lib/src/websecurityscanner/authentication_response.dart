// ignore_for_file: unused_element, unnecessary_cast

import 'custom_account_response.dart';
import 'google_account_response.dart';
import 'iap_credential_response.dart';

/// Scan authentication configuration.
class AuthenticationResponse {
  /// Authentication using a custom account.
  final CustomAccountResponse customAccount;
  /// Authentication using a Google account.
  final GoogleAccountResponse googleAccount;
  /// Authentication using Identity-Aware-Proxy (IAP).
  final IapCredentialResponse iapCredential;

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
      'customAccount': customAccount.toMap(),
      'googleAccount': googleAccount.toMap(),
      'iapCredential': iapCredential.toMap(),
    };
  }

  factory AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse(
      customAccount: CustomAccountResponse.fromMap((map['customAccount'] as Map).cast<String, dynamic>()),
      googleAccount: GoogleAccountResponse.fromMap((map['googleAccount'] as Map).cast<String, dynamic>()),
      iapCredential: IapCredentialResponse.fromMap((map['iapCredential'] as Map).cast<String, dynamic>()),
    );
  }
}

