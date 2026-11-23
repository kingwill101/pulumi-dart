// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_authorization_code_auth_params_entry_key_literal_value.dart';

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKey {
  /// Passing a literal value
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKeyLiteralValue?>? literalValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKey].
  /// [literalValue] Passing a literal value
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKey({
    this.literalValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKeyLiteralValue, Map<String, dynamic>>(literalValue, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKey.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKey(
      literalValue: (() { final guardedValue = map['literalValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKeyLiteralValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
