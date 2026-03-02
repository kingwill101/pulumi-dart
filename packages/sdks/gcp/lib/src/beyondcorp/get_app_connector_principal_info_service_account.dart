// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppConnectorPrincipalInfoServiceAccount {
  /// Email address of the service account.
  final pulumi.Input<String> email;

  /// Creates a new [GetAppConnectorPrincipalInfoServiceAccount].
  /// [email] Email address of the service account.
  GetAppConnectorPrincipalInfoServiceAccount({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetAppConnectorPrincipalInfoServiceAccount.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorPrincipalInfoServiceAccount(
      email: (map['email'] as String).input(),
    );
  }
}

