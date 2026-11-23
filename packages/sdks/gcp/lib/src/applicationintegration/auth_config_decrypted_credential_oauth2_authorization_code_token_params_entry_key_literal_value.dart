// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKeyLiteralValue {
  /// String.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKeyLiteralValue].
  /// [stringValue] String.
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKeyLiteralValue({
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringValue': ?stringValue,
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKeyLiteralValue.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParamsEntryKeyLiteralValue(
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
