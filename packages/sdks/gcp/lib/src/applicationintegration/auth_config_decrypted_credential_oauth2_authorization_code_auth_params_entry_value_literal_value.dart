// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryValueLiteralValue {
  /// String.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryValueLiteralValue].
  /// [stringValue] String.
  const AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryValueLiteralValue({
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringValue': ?stringValue,
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryValueLiteralValue.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParamsEntryValueLiteralValue(
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
