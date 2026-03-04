// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_key_literal_value.dart';

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey {
  /// Passing a literal value
  /// Structure is documented below.
  final pulumi.Input<
    AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue
  >?
  literalValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey].
  /// [literalValue] Passing a literal value
  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey({
    this.literalValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue':
          ?pulumi.Input.mapOptionalInputValue<
            AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue,
            Map<String, dynamic>
          >(literalValue, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey(
      literalValue: (() {
        final guardedValue = map['literalValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKeyLiteralValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
