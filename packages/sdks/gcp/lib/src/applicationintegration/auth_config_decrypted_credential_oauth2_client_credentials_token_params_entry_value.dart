// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_value_literal_value.dart';

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue {
  /// Passing a literal value
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue>? literalValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue].
  /// [literalValue] Passing a literal value
  const AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue({
    this.literalValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue, Map<String, dynamic>>(literalValue, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue(
      literalValue: (() { final guardedValue = map['literalValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

