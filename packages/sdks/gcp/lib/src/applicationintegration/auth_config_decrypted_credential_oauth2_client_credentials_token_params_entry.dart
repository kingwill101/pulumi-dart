// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_key.dart';
import 'auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry_value.dart';

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry {
  /// Key of the map entry.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey>? key;
  /// Value of the map entry.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue>? value;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry].
  /// [key] Key of the map entry.
  /// [value] Value of the map entry.
  const AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey, Map<String, dynamic>>(key, (value) => value.toMap()),
      'value': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
