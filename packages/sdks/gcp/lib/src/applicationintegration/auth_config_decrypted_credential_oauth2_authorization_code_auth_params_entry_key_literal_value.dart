// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKeyLiteralValue {
  /// String.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKeyLiteralValue].
  /// [stringValue] String.
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKeyLiteralValue({
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringValue': ?stringValue,
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKeyLiteralValue.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryKeyLiteralValue(
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
