// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppConnectorPrincipalInfoServiceAccount {
  /// Email address of the service account.
  final pulumi.Input<String> email;

  /// Creates a new [AppConnectorPrincipalInfoServiceAccount].
  /// [email] Email address of the service account.
  const AppConnectorPrincipalInfoServiceAccount({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AppConnectorPrincipalInfoServiceAccount.fromMap(Map<String, dynamic> map) {
    return AppConnectorPrincipalInfoServiceAccount(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}

