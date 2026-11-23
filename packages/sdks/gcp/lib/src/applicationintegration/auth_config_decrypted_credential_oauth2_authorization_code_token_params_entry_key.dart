// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_authorization_code_token_params_entry_key_literal_value.dart';

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKey {
  /// Passing a literal value
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKeyLiteralValue?>? literalValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKey].
  /// [literalValue] Passing a literal value
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKey({
    this.literalValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKeyLiteralValue, Map<String, dynamic>>(literalValue, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKey.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKey(
      literalValue: (() { final guardedValue = map['literalValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKeyLiteralValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
