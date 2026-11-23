// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_authorization_code_token_params_entry_key.dart';
import 'auth_config_decrypted_credential_oauth2_authorization_code_token_params_entry_value.dart';

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry {
  /// Key of the map entry.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKey?>? key;
  /// Value of the map entry.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValue?>? value;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry].
  /// [key] Key of the map entry.
  /// [value] Value of the map entry.
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKey, Map<String, dynamic>>(key, (value) => value.toMap()),
      'value': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
