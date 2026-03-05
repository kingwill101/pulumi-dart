// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialServiceAccountCredentials {
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String>? scope;
  /// Name of the service account that has the permission to make the request.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [AuthConfigDecryptedCredentialServiceAccountCredentials].
  /// [scope] A space-delimited list of requested scope permissions.
  /// [serviceAccount] Name of the service account that has the permission to make the request.
  AuthConfigDecryptedCredentialServiceAccountCredentials({
    this.scope,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory AuthConfigDecryptedCredentialServiceAccountCredentials.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialServiceAccountCredentials(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

