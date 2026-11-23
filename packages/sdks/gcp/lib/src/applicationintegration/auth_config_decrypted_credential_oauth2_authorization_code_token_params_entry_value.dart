// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_authorization_code_token_params_entry_value_literal_value.dart';

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValue {
  /// Passing a literal value
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValueLiteralValue?>? literalValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValue].
  /// [literalValue] Passing a literal value
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValue({
    this.literalValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValueLiteralValue, Map<String, dynamic>>(literalValue, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValue.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValue(
      literalValue: (() { final guardedValue = map['literalValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValueLiteralValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
