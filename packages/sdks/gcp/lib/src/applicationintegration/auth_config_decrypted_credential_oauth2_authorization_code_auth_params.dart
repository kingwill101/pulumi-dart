// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_authorization_code_auth_params_entry.dart';

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParams {
  /// A list of parameter map entries.
  /// Structure is documented below.
  final pulumi.Input<List<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry>?>? entries;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParams].
  /// [entries] A list of parameter map entries.
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParams({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParams.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParams(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry>(guardedValue, (value) => AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
