// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_authorization_code_token_params_entry.dart';

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParams {
  /// A list of parameter map entries.
  /// Structure is documented below.
  final pulumi.Input<List<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry>?>? entries;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParams].
  /// [entries] A list of parameter map entries.
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParams({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParams.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParams(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry>(guardedValue, (value) => AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
