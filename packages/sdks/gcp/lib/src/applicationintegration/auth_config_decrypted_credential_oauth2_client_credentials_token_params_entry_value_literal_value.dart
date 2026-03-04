// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue {
  /// String.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue].
  /// [stringValue] String.
  AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue({
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stringValue': ?stringValue};
  }

  factory AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthConfigDecryptedCredentialOauth2ClientCredentialsTokenParamsEntryValueLiteralValue(
      stringValue: (() {
        final guardedValue = map['stringValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
