// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_authorization_code_auth_params_entry_key.dart';
import 'auth_config_decrypted_credential_oauth2_authorization_code_auth_params_entry_value.dart';

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry {
  /// Key of the map entry.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKey?>? key;
  /// Value of the map entry.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryValue?>? value;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry].
  /// [key] Key of the map entry.
  /// [value] Value of the map entry.
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKey, Map<String, dynamic>>(key, (value) => value.toMap()),
      'value': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
