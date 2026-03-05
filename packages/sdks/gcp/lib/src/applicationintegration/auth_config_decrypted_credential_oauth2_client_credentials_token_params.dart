// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_client_credentials_token_params_entry.dart';

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams {
  /// A list of parameter map entries.
  /// Structure is documented below.
  final pulumi.Input<List<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry>>? entries;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams].
  /// [entries] A list of parameter map entries.
  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParams(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry>(guardedValue, (value) => AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

